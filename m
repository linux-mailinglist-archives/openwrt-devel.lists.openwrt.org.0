Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BCC072BA6E
	for <lists+openwrt-devel@lfdr.de>; Mon, 27 May 2019 20:58:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=05CSKurq1QmqMkwYNrvOs3CRINIlShGm0xaz9BM0jsc=; b=jZWjfbwVpfksLh
	cjmVFWi/YCbCcIaRj3/2yyhbwIsmGxISXdM8yZjSvQSFN+Bhltkd89nFTcNq6m9gOM1/mwHnIz3oN
	YjTPFdvJWvHoTleGGHSzfXkz7COGHdFxsGVM9lRy5pkQoVhSkJQkh5xd/vlnhjxBWEjr6OkiykG69
	p+X0agCni7Wxd1eQ+b9SovWo1RFlJIIcTIi3ud2Wlyr89+LP0Yh+TL0GPbMwJoGnSuKs+ir8W8DQf
	4PDsJLzfsSLP5AXoG31SKLNgIxszveYzxPWQhahVFobWF6OgDc0LcnkTCLc/lcQsYAXQ+BRD+ttsZ
	kmQCfXvn0IZXhFNsYrUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVKp6-00011V-Ej; Mon, 27 May 2019 18:58:16 +0000
Received: from wp175.webpack.hosteurope.de ([2a01:488:42:1000:50ed:84b6::])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVKoz-00010F-Oy
 for openwrt-devel@lists.openwrt.org; Mon, 27 May 2019 18:58:11 +0000
Received: from 83-215-242-194.bruck.stat.salzburg-online.at ([83.215.242.194]
 helo=[172.30.3.153]); authenticated
 by wp175.webpack.hosteurope.de running ExIM with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 id 1hVKow-0000ku-RX; Mon, 27 May 2019 20:58:06 +0200
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
Message-ID: <153dfd1f-af88-e058-6158-27f0bdf904a4@birger-koblitz.de>
Date: Mon, 27 May 2019 20:58:06 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190527164340.GC1737@makrotopia.org>
Content-Language: en-US
X-bounce-key: webpack.hosteurope.de; mail@birger-koblitz.de; 1558983489;
 2b2be7f3; 
X-HE-SMSGID: 1hVKow-0000ku-RX
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_115809_954943_BEA4BEEE 
X-CRM114-Status: GOOD (  16.23  )
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

SGkgRGFuaWVsLAoKT24gMjcuMDUuMTkgMTg6NDMsIERhbmllbCBHb2xsZSB3cm90ZToKPiBPbiBN
b24sIE1heSAyNywgMjAxOSBhdCAwNjozNTozMFBNICswMjAwLCBEYW5pZWwgR29sbGUgd3JvdGU6
Cj4+IEhpIEJpcmdlciwKPj4KPj4gdGhhbmtzIGZvciBzdWJtaXR0aW5nIHlvdXIgd29yay4gSW4g
b3JkZXIgdG8gc3VwcG9ydCB0aGUgZXh0ZXJuYWwKPj4gc3dpdGNoLCBleGlzdGluZyBnZW5lcmlj
IGZlYXR1cmVzIHNob3VsZCBiZSB1c2VkIGluIG9yZGVyIHRvCj4+IGltcGxlbWVudCB0aGUgcGh5
LXJlc2V0IHZpYSBHUElPIzM5Lgo+PiBTZWUgbXkgY29tbWVudHMgaW4gdGhlIGNvZGUgKEkgY29t
bWVudGVkIHRoZSBmaXJzdCBkZXZpY2Ugb25seSwgc2FtZQo+PiBhcHBsaWVzIHRvIHRoZSAybmQg
ZGV2aWNlIGFzIHdlbGwpLgo+Pgo+PiBPbiBNb24sIE1heSAyNywgMjAxOSBhdCAwNTo1NToyNFBN
ICswMjAwLCBCaXJnZXIgS29ibGl0eiB3cm90ZToKPj4+IHJhbWlwczogYWRkIE5ldGdlYXIgRVct
NzQ3NlJQQwpUaGlzIGlzIGEgdHlwbyAob3IgYmV0dGVyIGN1dC1hbmQtcGFzdGUgd2hpY2ggd2Vu
dCB3cm9uZykuIFRoZSBkZXZpY2UgaXMKZnJvbSBFZGltYXguCj4+PiBTb0M6wqDCoCBNZWRpYVRl
ayBNVDc2MjBhIEAgNTgwTUh6Cj4+PiBSQU06wqDCoCA2NE0gKFdpbmJvbmQgVzk3NTFHNktCLTI1
KQo+Pj4gRkxBU0g6IDhNQiAoTWFjcm9uaXgpCj4+PiBXaUZpOsKgIFNvQy1pbnRlZ3JhdGVkOiBN
ZWRpYVRlayBNVDc2NjIwYSBiZ24KPj4gVHlwbywgSSBzdXBwb3NlZC4gTVQ3NjIwYSAob3IgUlQ2
MzUyIHRvIG5hbWUgdGhlIGVtYmVkZGVkIFdpRmkgSVApClllcC4KPj4KPj4+IFdpRmk6wqAgTWVk
aWFUZWsgTVQ3NjEyRU4gbmFjCj4+PiBHQkU6wqDCoCBSVEw4MjExRQo+PiBQbGVhc2UgbWVudGlv
biBob3cgbWFueSBwaHlpY2FsIHBvcnRzIHRoZSBkZXZpY2UgZ290IGFuZCBpZiBhbGwgb2YKPj4g
dGhlbSBzdXBwb3J0IEdiRS4KPiBTb3JyeSwgdGhhdCB3YXMgc3R1cGlkIG9mIG1lLiBJIGp1c3Qg
cmVhbGl6ZWQgd2UgYXJlIHRhbGtpbmcgYWJvdXQgYQo+IHdhbGwtd2FydDoKPiBodHRwczovL2Zj
Y2lkLmlvL05ERDk1NzQ3NjE1MDEvSW50ZXJuYWwtUGhvdG9zL0ludGVybmFsLVBob3Rvcy0yNzA2
MTcyCj4KPiBTbyBpdCdzIGEgc2ltcGxlIFBIWSB3aXRoIDF4IEdiRSBvYnZpb3VzbHkgOykKClNv
OgoKR2JFOsKgwqDCoCAxeCAoUlRMODIxMUUpCgo/Cgo+Cj4+PiArCj4+PiArJnBpbmN0cmwgewo+
Pj4gK8KgwqDCoMKgwqDCoCBzdGF0ZV9kZWZhdWx0OiBwaW5jdHJsMCB7Cj4+PiArwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCBncGlvIHsKPj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIC8v
IG1pZ2h0IG5lZWQgcGluIDM5OiA7Cj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqAgcmFsaW5rLGdyb3VwID0gImkyYyIsICJ1YXJ0ZiIsICJuZF9zZCIsCj4+
PiAicmdtaWkyIiwgInNwaSByZWZjbGsiOwo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgIHJhbGluayxmdW5jdGlvbiA9ICJncGlvIjsKPj4+ICvCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgIH07Cj4+PiArwqDCoMKgwqDCoMKgIH07Cj4+PiArfTsKPj4g
QSBwaW5jdHJsIGdyb3VwIGZvciB0aGUgc3dpdGNoIHJlc2V0IHdvdWxkIGJlIGFwcHJvcHJpYXRl
Ogo+PiBHUElPIDM5IGlzIHA0bGVkX2FuLCBoZW5jZSBhZGQ6Cj4+IAlwaHlfcmVzZXRfcGluczog
cGh5LXJlc2V0IHsKPj4gCQlncGlvIHsKPj4gCQkJcmFsaW5rLGdyb3VwID0gInA0bGVkX2FuIjsK
Pj4gCQkJcmFsaW5rLGZ1bmN0aW9uID0gImdwaW8iOwo+PiAJCX07Cj4+IAl9OwpPay4KPj4+ICsK
Pj4+ICsKPj4+ICsmZXRoZXJuZXQgewo+Pj4gKwo+Pj4gK8KgwqDCoCBzdGF0dXMgPSAib2theSI7
Cj4+PiArwqDCoMKgwqDCoMKgIG10ZC1tYWMtYWRkcmVzcyA9IDwmZmFjdG9yeSAweDQ+Owo+Pj4g
K8KgwqDCoMKgwqDCoCBwaW5jdHJsLW5hbWVzID0gImRlZmF1bHQiOwo+Pj4gK8KgwqDCoMKgwqDC
oCBwaW5jdHJsLTAgPSA8JnJnbWlpMV9waW5zICZtZGlvX3BpbnM+Owo+PiBOb3cgdXNlIGl0IGhl
cmUKPj4gCXBpbmN0cmwtMCA9IDwmcmdtaWkxX3BpbnMgJm1kaW9fcGlucyAmcGh5X3Jlc2V0X3Bp
bnM+OwpPSy4KPj4+ICvCoMKgwqDCoMKgwqAgbWVkaWF0ZWsscG9ydG1hcCA9ICJsIjsKPj4+ICvC
oMKgwqAgbWVkaWF0ZWssbWRpby1tb2RlID0gPDE+Owo+Pj4gK8KgwqDCoAo+Pj4gK8KgwqDCoMKg
wqDCoCBwb3J0QDUgewo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgc3RhdHVzID0g
Im9rYXkiOwo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgbWVkaWF0ZWssZml4ZWQt
bGluayA9IDwxMDAwIDEgMSAxPjsKPj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHBo
eS1tb2RlID0gInJnbWlpIjsKPj4gQW5kIHdoeSBub3QgdXNlIHNvbWV0aGluZyBsaWtlCj4+IAlw
aHktcmVzZXQtZ3Bpb3MgPSA8JmdwaW8xIDE1IEdQSU9fQUNUSVZFX0xPVz47Cj4+IGhlcmUgYW5k
IG1ha2Ugc3VyZSBpdCdzIHRha2VuIGNhcmUgb2YsIGJlY2F1c2UgdGhpcyBpcyBpbWhvIHdoZXJl
IGl0Cj4+IHdvdWxkIGJlbG9uZy4KPj4KT0ssIGJ1dCBob3cgZG8gSSB0YWtlIGNhcmUgb2YgdGhl
IHBoeS1yZXNldC4gSXMgaXQgT0sgaG93IGl0IGlzIGRvbmUKZGlyZWN0bHkgaW4gdGhlIGdzd19t
dDc2MjAuYyBkcml2ZXIgY29kZT8gT3IgaXMgdGhlcmUgYSBmcmFtZXdvcmsgZm9yCnRoaXMsIGFs
cmVhZHk/IEFuZCBpZiB0aGVyZSBpcyBzdWNoIGEgZnJhbWV3b3JrLCB0aGVuIGhvdyBkbyBJIG1h
a2Ugc3VyZQp0aGUgcmVzZXQgaXMgbWFkZSBhdCB0aGUgcmlnaHQgcG9pbnQgaW4gdGltZSBkdXJp
bmcgdGhlIHN3aXRjaCdzCmluaXRpYWxpemF0aW9uPwoKPj4KPj4+IGRpZmYgLS1naXQKPj4+IGEv
dGFyZ2V0L2xpbnV4L3JhbWlwcy9maWxlcy00LjE0L2RyaXZlcnMvbmV0L2V0aGVybmV0L21lZGlh
dGVrL2dzd19tdDc2MjAuYwo+Pj4gYi90YXJnZXQvbGludXgvcmFtaXBzL2ZpbGVzLTQuMTQvZHJp
dmVycy9uZXQvZXRoZXJuZXQvbWVkaWF0ZWsvZ3N3X210NzYyMC5jCj4+PiBpbmRleCA1ZmM1MDgw
YWFmLi4zMDVjZTE4MDM3IDEwMDY0NAo+Pj4gLS0tCj4+PiBhL3RhcmdldC9saW51eC9yYW1pcHMv
ZmlsZXMtNC4xNC9kcml2ZXJzL25ldC9ldGhlcm5ldC9tZWRpYXRlay9nc3dfbXQ3NjIwLmMKPj4+
ICsrKwo+Pj4gYi90YXJnZXQvbGludXgvcmFtaXBzL2ZpbGVzLTQuMTQvZHJpdmVycy9uZXQvZXRo
ZXJuZXQvbWVkaWF0ZWsvZ3N3X210NzYyMC5jCj4+PiBAQCAtODQsNiArODQsMzIgQEAgc3RhdGlj
IGludCBtdDc2MjBfbWRpb19tb2RlKHN0cnVjdCBkZXZpY2Vfbm9kZSAqZXRoX25vZGUpCj4+PiDC
oMKgwqDCoMKgwqDCoCByZXR1cm4gcmV0Owo+Pj4gwqB9Cj4+PiDCoAo+Pj4gK3ZvaWQgcmVzZXRf
cmVhbHRla19waHkodm9pZCl7Cj4+PiArI2RlZmluZSBSQUxJTktfR1BJT19ESVLCoMKgwqDCoMKg
wqDCoCAweEIwMDAwNjAwKzB4NEMKPj4+ICsjZGVmaW5lIFJBTElOS19HUElPX0RBVEHCoMKgwqDC
oMKgwqAgMHhCMDAwMDYwMCsweDQ4Cj4+PiArI2RlZmluZSBSQUxJTktfUkVTRVRQSFlfR1BJT8Kg
wqDCoMKgwqDCoCAoMzktMjQpCj4+PiArwqDCoMKgIHUzMiBncGlvZGlyOwo+Pj4gK8KgwqDCoCB1
MzIgcGlvZGF0YTsKPj4+ICvCoMKgwqAgdTMyIHJlc2V0X3Bpbj0gUkFMSU5LX1JFU0VUUEhZX0dQ
SU87Cj4+PiArwqDCoMKgCj4+PiArwqDCoMKgIHByX2luZm8oImdzdzogUmVzZXR0aW5nIFJUTDgy
MTFlIHVzaW5nIGdwaW8gMzlcbiIpOwo+Pj4gK8KgwqDCoCBncGlvZGlyID3CoCBsZTMyX3RvX2Nw
dSgqKHZvbGF0aWxlIHUzMiAqKShSQUxJTktfR1BJT19ESVIpKTsKPj4+ICvCoMKgwqAgLypzZXQg
Z3BpbzEgdG8gb3V0cHV0Ki8KPj4+ICvCoMKgwqAgZ3Bpb2RpciB8PSAoMTw8cmVzZXRfcGluKTsK
Pj4+ICvCoMKgwqAgKih2b2xhdGlsZSB1MzIgKikoUkFMSU5LX0dQSU9fRElSKSA9IGNwdV90b19s
ZTMyKGdwaW9kaXIpOwo+Pj4gKwo+Pj4gK8KgwqDCoCBwaW9kYXRhID0gbGUzMl90b19jcHUoKih2
b2xhdGlsZSB1MzIgKikoUkFMSU5LX0dQSU9fREFUQSkpOwo+Pj4gK8KgwqDCoCAvKnNldCB0byBs
b3coMCkqLwo+Pj4gK8KgwqDCoCBwaW9kYXRhICY9IH4oMUwgPDwgcmVzZXRfcGluKTsKPj4+ICvC
oMKgwqAgKih2b2xhdGlsZSB1MzIgKikoUkFMSU5LX0dQSU9fREFUQSkgPSBjcHVfdG9fbGUzMihw
aW9kYXRhKTsKPj4+ICvCoMKgwqAgLypkZWxheSAzMG1zKi8KPj4+ICvCoMKgwqAgbWRlbGF5KDMw
KTsKPj4+ICvCoMKgwqAgLypzZXQgdG8gaGlnaCgxKSovCj4+PiArwqDCoMKgIHBpb2RhdGEgfD0g
KDFMIDw8IHJlc2V0X3Bpbik7Cj4+PiArwqDCoMKgICoodm9sYXRpbGUgdTMyICopKFJBTElOS19H
UElPX0RBVEEpID0gY3B1X3RvX2xlMzIocGlvZGF0YSk7Cj4+PiArfQo+Pj4gKwo+Pj4gKwo+Pj4g
wqBzdGF0aWMgdm9pZCBtdDc2MjBfaHdfaW5pdChzdHJ1Y3QgbXQ3NjIwX2dzdyAqZ3N3LCBpbnQg
bWRpb19tb2RlKQo+Pj4gwqB7Cj4+PiDCoMKgwqDCoMKgwqDCoCB1MzIgaTsKPj4+IEBAIC0yMjAs
NiArMjQ2LDcgQEAgaW50IG10a19nc3dfaW5pdChzdHJ1Y3QgZmVfcHJpdiAqcHJpdikKPj4+IMKg
wqDCoMKgwqDCoMKgIHN0cnVjdCBkZXZpY2Vfbm9kZSAqbnAgPSBwcml2LT5zd2l0Y2hfbnA7Cj4+
PiDCoMKgwqDCoMKgwqDCoCBzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2ID0gb2ZfZmluZF9k
ZXZpY2VfYnlfbm9kZShucCk7Cj4+PiDCoMKgwqDCoMKgwqDCoCBzdHJ1Y3QgbXQ3NjIwX2dzdyAq
Z3N3Owo+Pj4gK8KgwqDCoCBjb25zdCBjaGFyICpydGw4MjExZV9yZXNldCA9IE5VTEw7Cj4+PiDC
oAo+Pj4gwqDCoMKgwqDCoMKgwqAgaWYgKCFwZGV2KQo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgIHJldHVybiAtRU5PREVWOwo+Pj4gQEAgLTIzMSw2ICsyNTgsOSBAQCBpbnQgbXRr
X2dzd19pbml0KHN0cnVjdCBmZV9wcml2ICpwcml2KQo+Pj4gwqDCoMKgwqDCoMKgwqAgcHJpdi0+
c29jLT5zd3ByaXYgPSBnc3c7Cj4+PiDCoAo+Pj4gwqDCoMKgwqDCoMKgwqAgbXQ3NjIwX2h3X2lu
aXQoZ3N3LCBtdDc2MjBfbWRpb19tb2RlKHByaXYtPmRldi0+b2Zfbm9kZSkpOwo+Pj4gK8KgwqDC
oCBvZl9wcm9wZXJ0eV9yZWFkX3N0cmluZyhucCwgIm1lZGlhdGVrLHJ0bDgyMTFlLXJlc2V0IiwK
Pj4+ICZydGw4MjExZV9yZXNldCk7Cj4+PiArwqDCoMKgIGlmIChydGw4MjExZV9yZXNldCAmJiAh
c3RyY21wKHJ0bDgyMTFlX3Jlc2V0LCAieWVzIikpCj4+PiArwqDCoMKgwqDCoMKgwqAgcmVzZXRf
cmVhbHRla19waHkoKTsKPj4+IMKgCj4+PiDCoMKgwqDCoMKgwqDCoCBpZiAoZ3N3LT5pcnEpIHsK
Pj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCByZXF1ZXN0X2lycShnc3ctPmlycSwg
Z3N3X2ludGVycnVwdF9tdDc2MjAsIDAsCj4+Pgo+Pj4gX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KPj4+IG9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cj4+
PiBvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCj4+PiBodHRwczovL2xpc3RzLm9wZW53
cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo+Pj4KCkJpcmdlcgoKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwg
bWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0
cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
