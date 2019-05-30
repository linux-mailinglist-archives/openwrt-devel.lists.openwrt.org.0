Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 22E9E302DD
	for <lists+openwrt-devel@lfdr.de>; Thu, 30 May 2019 21:36:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yPrMlN9T7drgxki2yLS8yupCuoo8WQkNM9StQmpFclY=; b=ri12qvDD5ZPQWh
	Cv0huWicUonu1nmt9T2Q6797E+HVjn/nWL8jkkGtzzAd40lJNocK/gU7WLRYLZqnqxygHACrOVLK3
	5KJZmcw997xv5L2eBOo1S2yBcqwr+420PJBLQVWkPZAlVr9W5gohEHNfrJ5GBQ1sIu03QdGz9i9bq
	xLuTKLD7zCEzGUX6h9RZYEK5fgQW6CyIbrjMTyeAURk0MHcV7B8lUl5cTA28c9SukDT6J7lUX/c83
	H4GwJU8W4h9SZ7QGL6lwU3AflO3jg/evAZ24L/8iyFgLVNrbN1GFizXOiS6976oD8zMp/0CtLUjjG
	h3vwPr4RrF2jCVZYwWEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWQqz-0001Ql-Th; Thu, 30 May 2019 19:36:45 +0000
Received: from wp175.webpack.hosteurope.de ([2a01:488:42:1000:50ed:84b6::])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWQqr-0001QK-Tx
 for openwrt-devel@lists.openwrt.org; Thu, 30 May 2019 19:36:40 +0000
Received: from 83-215-242-194.bruck.stat.salzburg-online.at ([83.215.242.194]
 helo=[172.30.3.153]); authenticated
 by wp175.webpack.hosteurope.de running ExIM with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 id 1hWQqk-0000XP-9c; Thu, 30 May 2019 21:36:30 +0200
To: openwrt-devel@lists.openwrt.org
References: <8f1759e6-6921-8831-fc42-da0b34d4f611@birger-koblitz.de>
 <20190527163530.GB1737@makrotopia.org> <20190527164340.GC1737@makrotopia.org>
From: Birger Koblitz <mail@birger-koblitz.de>
Openpgp: preference=signencrypt
Autocrypt: addr=mail@birger-koblitz.de; prefer-encrypt=mutual; keydata=
 mQGiBELb9iURBAD7URWZY2HQ38IvWh1pUBiOJMoMi3/qImwhh2hWCgfVPP2FsKD+84zNqJgi
 bIgCWeiHeyQ5fcUnpnn2aPNwMznRxmwjCfb4a6AUPKjZIETGREaWathA9kVAkIlnrZI16QpY
 cz9gWXenVe2bPTny723pQNhLKNhmTQySjQikSMiSAwCgvLxjtDu3gckDzjmA8qs25c6nxRsE
 ANZI7xZqR7wcvzs5/UxNd43UsAN8NYLaOd7E5jgjfaDUu6fxUgmZmWdM+F1Xkp91a4ZHQpMC
 NSAF+vPWiGEGJLhpNYDME/UhqQMDx95v6VvOiH2n4MC0ReW2YkhSCCP1uXVt2/Z7d7jmNtD9
 G8oRE1e/fdRmDMYsdcqN6DmkoJdGBADrr4sVPd6mywEL8kZVfwwPw1i3xMXk5GiAEHj+awo+
 eFTkS6F0K7IAuixm/qizf8zsUob0TRn4VCmFoyT3fkNLxjbi94g9koVQ2cUTCwmkRZkH3fUR
 /jX5ybnKUKO+jyAL2loVnYcC1I3EVzt0NFNx4siG3uzgfAdBF0bNEXjwOrQxQmlyZ2VyIEtv
 YmxpdHogKHByaXZhdGUpIDxtYWlsQGJpcmdlci1rb2JsaXR6LmRlPohaBBMRAgAaBQJMo3rM
 ApsPBosJCAcDAgSVAggDBJYCAwEACgkQ0SJkb/ufpr4lRQCgukvkUqWZ6FbRa6bPdutUcW08
 PacAn0rBrMyYzdUo/cvD7LTjOBH8eW6RuQENBELb9igQBAD//o2rYN5fVDYLPTWyRJj9di9e
 Cwp3T9s+AnY9R7s6U6MDaLfFSzCwpJZTeYkN8V/n5C2iTIQomUkhrc8v4YMlI71XHs+qoSsu
 lvzjlu9eRHysSWbtmeNjGPRKrJHfQCywifrSgY3xJzteY1Ks9JAnW4QKhZQvgHi920f3KL63
 5wADBQP6AuAqbvBdXAoxLuJmiCojzsqF+J4ZBMFvuXd8md2EYtQV74ZqxbAcDo9ELNh+2VNd
 vnsn05NswHNBpaSnhTNzr0TkNkRRQAhZ8rwNbNh0iVuT4PADlyDkEWdNfBl1MUfs8OyCj1tB
 l2UGeJ+DNp1+X8AiNyGmdEicozb90I7UBVyISQQYEQIACQUCTKN6zAKbDAAKCRDRImRv+5+m
 vg64AJwISUIlauuw6sMaWhGtqGzBc96pAACeKH15f9ssxrnwYSzk1spOsw8ejpM=
Message-ID: <a96c926f-a3d2-b090-1d4a-814b0713b4e3@birger-koblitz.de>
Date: Thu, 30 May 2019 21:36:29 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190527164340.GC1737@makrotopia.org>
Content-Language: en-US
X-bounce-key: webpack.hosteurope.de; mail@birger-koblitz.de; 1559244997;
 9f1af404; 
X-HE-SMSGID: 1hWQqk-0000XP-9c
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190530_123638_112276_DF54833C 
X-CRM114-Status: GOOD (  11.37  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH] Support for Edimax EW-7476RPC /
 EW-7478AC
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <openwrt-devel.lists.openwrt.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

SGkgRGFuaWVsLAoKSSBoYXZlIHRyaWVkIGluIHZhaW4gdG8gaW1wbGVtZW50IHlvdXIgc3VnZ2Vz
dGlvbnMuIEkgYW0gc3R1Y2sgYW5kIG5lZWQKc29tZSBoZWxwOgoKT24gMjcuMDUuMTkgMTg6NDMs
IERhbmllbCBHb2xsZSB3cm90ZToKPj4+ICsKPj4+ICsmcGluY3RybCB7Cj4+PiArwqDCoMKgwqDC
oMKgIHN0YXRlX2RlZmF1bHQ6IHBpbmN0cmwwIHsKPj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgIGdwaW8gewo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgLy8gbWlnaHQgbmVlZCBw
aW4gMzk6IDsKPj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oCByYWxpbmssZ3JvdXAgPSAiaTJjIiwgInVhcnRmIiwgIm5kX3NkIiwKPj4+ICJyZ21paTIiLCAi
c3BpIHJlZmNsayI7Cj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgcmFsaW5rLGZ1bmN0aW9uID0gImdwaW8iOwo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgfTsKPj4+ICvCoMKgwqDCoMKgwqAgfTsKPj4+ICt9Owo+PiBBIHBpbmN0cmwgZ3Jv
dXAgZm9yIHRoZSBzd2l0Y2ggcmVzZXQgd291bGQgYmUgYXBwcm9wcmlhdGU6Cj4+IEdQSU8gMzkg
aXMgcDRsZWRfYW4sIGhlbmNlIGFkZDoKPj4gCXBoeV9yZXNldF9waW5zOiBwaHktcmVzZXQgewo+
PiAJCWdwaW8gewo+PiAJCQlyYWxpbmssZ3JvdXAgPSAicDRsZWRfYW4iOwo+PiAJCQlyYWxpbmss
ZnVuY3Rpb24gPSAiZ3BpbyI7Cj4+IAkJfTsKPj4gCX07CgpUaGlzIGRvZXMgbm90IHdvcmssIEkg
Z2V0IHRoZSBmb2xsb3dpbmcgZXJyb3IgZHVyaW5nIGJvb3Q6ClvCoMKgwqAgMS4yMjczOTJdIHJ0
Mjg4MC1waW5tdXggcGluY3RybDogaW52YWxpZCBncm91cCAicDRsZWRfYW4iIGZvcgpmdW5jdGlv
biAiZ3BpbyIKW8KgwqDCoCAxLjI0MjAyOF0gbXRrX3NvY19ldGg6IHByb2JlIG9mIDEwMTAwMDAw
LmV0aGVybmV0IGZhaWxlZCB3aXRoIGVycm9yIC0yMgpncGlvIGlzIHBhcnQgb2YgdGhlICJzcGkg
cmVmY2xrIiBncm91cC4gRXZlbiBpZiBJIHJlbW92ZSB0aGF0IGZyb20gdGhlCnBpbmN0cmwwIGdy
b3VwLCB0aGUgZXJyb3Igc3RheXMuIEkgdGhlbiB0cmllZDoKCiZwaW5jdHJsIHsKwqDCoMKgIHN0
YXRlX2RlZmF1bHQ6IHBpbmN0cmwwIHsKwqDCoMKgIMKgwqDCoCBncGlvIHsKwqDCoMKgIMKgwqDC
oCDCoMKgwqAgcmFsaW5rLGdyb3VwID0gImkyYyIsICJ1YXJ0ZiIsICJuZF9zZCIsICJyZ21paTIi
OwrCoMKgwqAgwqDCoMKgIMKgwqDCoCByYWxpbmssZnVuY3Rpb24gPSAiZ3BpbyI7CsKgwqDCoCDC
oMKgwqAgfTsKwqDCoMKgIH07CsKgwqDCoCAvKiB0aGUgcmVzZXQgcGluIDM5IGlzIHBhcnQgb2Yg
c3BpIHJlZmNsayAqLwrCoMKgwqAgcGh5X3Jlc2V0X3BpbnM6IHBoeS1yZXNldCB7CsKgwqDCoCDC
oMKgwqAgZ3BpbyB7CsKgwqDCoCDCoMKgwqAgwqDCoMKgIHJhbGluayxncm91cCA9ICJzcGkgcmVm
Y2xrIjsKwqDCoMKgIMKgwqDCoCDCoMKgwqAgwqDCoMKgIHJhbGluayxmdW5jdGlvbiA9ICJncGlv
IjsKwqDCoMKgIMKgwqDCoCB9OwrCoMKgwqAgfTsKfTsKCgoKJmV0aGVybmV0IHsKCsKgwqDCoCBz
dGF0dXMgPSAib2theSI7CsKgwqDCoCBtdGQtbWFjLWFkZHJlc3MgPSA8JmZhY3RvcnkgMHg0PjsK
wqDCoMKgIHBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7CsKgwqDCoCBwaW5jdHJsLTAgPSA8JnJn
bWlpMV9waW5zICZtZGlvX3BpbnMgJnBoeV9yZXNldF9waW5zPjsKwqDCoMKgIG1lZGlhdGVrLHBv
cnRtYXAgPSAibCI7CsKgwqDCoCBtZWRpYXRlayxtZGlvLW1vZGUgPSA8MT47CsKgwqDCoCBwaHkt
cmVzZXQtZ3Bpb3MgPSA8JmdwaW8xIDE1IEdQSU9fQUNUSVZFX0xPVz47CgouLi4KCn0KCldoaWNo
IGF2b2lkcyB0aGUgZXJyb3IuIEkgYW0gaG93ZXZlciBub3QgYWJsZSB0byBhc3NpZ24gdGhlIGdw
aW8gcmVzZXQgcGluLgoKVGhlIGNvZGUgbG9va3MgbGlrZSB0aGlzIGluIG10a19ldGhfc29jLmM6
CgpzdGF0aWMgaW50IF9faW5pdCBmZV9pbml0KHN0cnVjdCBuZXRfZGV2aWNlICpkZXYpCnsKwqDC
oMKgIHN0cnVjdCBmZV9wcml2ICpwcml2ID0gbmV0ZGV2X3ByaXYoZGV2KTsKwqDCoMKgIHN0cnVj
dCBkZXZpY2Vfbm9kZSAqcG9ydDsKwqDCoMKgIGNvbnN0IGNoYXIgKm1hY19hZGRyOwrCoMKgwqAg
aW50IGVycjsKwqDCoMKgCsKgwqDCoCBzdHJ1Y3QgZ3Bpb19kZXNjICpwaHlfcmVzZXQ7CgrCoMKg
wqAgcHJpdi0+c29jLT5yZXNldF9mZSgpOwoKwqDCoMKgIGlmIChwcml2LT5zb2MtPnN3aXRjaF9p
bml0KQrCoMKgwqAgwqDCoMKgIGlmIChwcml2LT5zb2MtPnN3aXRjaF9pbml0KHByaXYpKSB7CsKg
wqDCoCDCoMKgwqAgwqDCoMKgIG5ldGRldl9lcnIoZGV2LCAiZmFpbGVkIHRvIGluaXRpYWxpemUg
c3dpdGNoIGNvcmVcbiIpOwrCoMKgwqAgwqDCoMKgIMKgwqDCoCByZXR1cm4gLUVOT0RFVjsKwqDC
oMKgIMKgwqDCoCB9CsKgCsKgwqDCoCBwaHlfcmVzZXQgPSBkZXZtX2dwaW9kX2dldF9vcHRpb25h
bChwcml2LT5kZXYsICJwaHktcmVzZXQiLCAwKTsKwqDCoMKgIGlmKHBoeV9yZXNldCkgewrCoMKg
wqAgwqDCoMKgIHByX2luZm8oImV0aGVybmV0OiBHb3Qgc29tZXRoaW5nIGVsc2UgdGhhbiBOVUxM
XG4iKTsKwqDCoMKgIMKgwqDCoCBpZiAoSVNfRVJSKHBoeV9yZXNldCkpewrCoMKgwqAgwqDCoMKg
IMKgwqDCoCBwcl9pbmZvKCJldGhlcm5ldDogR290IGVycm9yICVkXG4iLCBQVFJfRVJSKHBoeV9y
ZXNldCkpOwrCoMKgwqAgwqDCoMKgIH0gZWxzZSB7CsKgwqDCoCDCoMKgwqAgwqDCoMKgIGVyciA9
IGdwaW9kX2RpcmVjdGlvbl9vdXRwdXQocGh5X3Jlc2V0LCAxKTsKwqDCoMKgIMKgwqDCoCDCoMKg
wqAgaWYoIWVycikgewrCoMKgwqAgwqDCoMKgIMKgwqDCoCDCoMKgwqAgcHJfaW5mbygiZXRoZXJu
ZXQ6IGRpcmVjdGlvbiBpcyBvdXRwdXRcbiIpOwrCoMKgwqAgwqDCoMKgIMKgwqDCoCDCoMKgwqAg
bWRlbGF5KDMwKTsKwqDCoMKgIMKgwqDCoCDCoMKgwqAgwqDCoMKgIGdwaW9kX3NldF92YWx1ZShw
aHlfcmVzZXQsIDApOwrCoMKgwqAgwqDCoMKgIMKgwqDCoCB9IGVsc2UgewrCoMKgwqAgwqDCoMKg
IMKgwqDCoCDCoMKgwqAgcHJfaW5mbygiRXJyb3I6ICVkXG4iLCBlcnIpOwrCoMKgwqAgwqDCoMKg
IMKgwqDCoCB9CsKgwqDCoCDCoMKgwqAgfQrCoMKgwqAgfSBlbHNlIHsKwqDCoMKgIMKgwqDCoCBw
cl9pbmZvKCJldGhlcm5ldDogTm8gcGh5LXJlc2V0IHByZXNlbnRcbiIpOwrCoMKgwqAgfcKgwqDC
oAoKSG93ZXZlciwgdGhpcyBnaXZlcyBtZSB0aGUgYWx3YXlzIHRoZSB3ZWlyZCBlcnJvciBjb2Rl
IC01MTcgYXMgYSByZXN1bHQKZnJvbSBQVFJfRVJSKCksIHdoaWNoIGlzIG5vdCBkb2N1bWVudGVk
LiBBbnkgaGVscCBhcHByZWNpYXRlZC4KCgpCaXJnZXIKCgo+IF9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QK
PiBvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCj4gaHR0cHM6Ly9saXN0cy5vcGVud3J0
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwKPgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApv
cGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcv
bWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
