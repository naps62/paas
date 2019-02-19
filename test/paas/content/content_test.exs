defmodule Paas.ContentTest do
  use Paas.DataCase

  alias Paas.Content

  describe "puns" do
    alias Paas.Content.Pun

    @valid_attrs %{body: "some body"}
    @update_attrs %{body: "some updated body"}
    @invalid_attrs %{body: nil}

    def pun_fixture(attrs \\ %{}) do
      {:ok, pun} =
        attrs
        |> Enum.into(@valid_attrs)
        |> Content.create_pun()

      pun
    end

    test "list_puns/0 returns all puns" do
      pun = pun_fixture()
      assert Content.list_puns() == [pun]
    end

    test "get_pun!/1 returns the pun with given id" do
      pun = pun_fixture()
      assert Content.get_pun!(pun.id) == pun
    end

    test "create_pun/1 with valid data creates a pun" do
      assert {:ok, %Pun{} = pun} = Content.create_pun(@valid_attrs)
      assert pun.body == "some body"
    end

    test "create_pun/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Content.create_pun(@invalid_attrs)
    end

    test "update_pun/2 with valid data updates the pun" do
      pun = pun_fixture()
      assert {:ok, %Pun{} = pun} = Content.update_pun(pun, @update_attrs)
      assert pun.body == "some updated body"
    end

    test "update_pun/2 with invalid data returns error changeset" do
      pun = pun_fixture()
      assert {:error, %Ecto.Changeset{}} = Content.update_pun(pun, @invalid_attrs)
      assert pun == Content.get_pun!(pun.id)
    end

    test "delete_pun/1 deletes the pun" do
      pun = pun_fixture()
      assert {:ok, %Pun{}} = Content.delete_pun(pun)
      assert_raise Ecto.NoResultsError, fn -> Content.get_pun!(pun.id) end
    end

    test "change_pun/1 returns a pun changeset" do
      pun = pun_fixture()
      assert %Ecto.Changeset{} = Content.change_pun(pun)
    end
  end
end
