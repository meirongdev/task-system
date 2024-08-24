import {Login} from "./Login";

export default function LoginPage({searchParams}) {
  const wantMagicLink = searchParams.magicLink === "yes";
  return <Login isPasswordLogin={!wantMagicLink}/>;
}
