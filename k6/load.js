import http from "k6/http";
import { sleep } from "k6";

export const options = {
  stages: [
    { duration: "1m", target: 10 },
    { duration: "2m", target: 50 },
    { duration: "1m", target: 0 }
  ]
};

export default function () {
  http.get("http://34.72.20.203/load");
  sleep(1);
}

