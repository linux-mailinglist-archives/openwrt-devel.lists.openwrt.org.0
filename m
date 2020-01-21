Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B1BFE144824
	for <lists+openwrt-devel@lfdr.de>; Wed, 22 Jan 2020 00:16:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Date:To:From:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LeOYglPixEjkGbixm2rtuYRu5R4ez90xxOnbATn28Og=; b=FDVTfmW2tG58eo
	pEIqUQPPJgHQ/QDs1IP0H+KD8MLQofoT8FU1m1d+AZ/EfSKmqchpT4nCd/CZhmg6kbkaFWUA3vtNV
	yrKlh1Z6Nh55/EnUrV5xFu+OfP5RJCtVsyioL2Fmbslwwe3zc4Y/ipi8jOWljllpWzOgxsPC0xhF4
	3YHdF1RpbAJdKQLX4I2yCGxnjWEogqMci1uy0mvkXwmc+KOxIMQ5b7OOHoWtvfMpVejTv5x+JHdW1
	OvtQnNGOyGUsK6c5azcDsA53JhGnUkriDUmJQ03NGoV0HlGCJg3LpyG7MhpaISuCt7zTMKyFvgWbe
	Gkcrbemb5xOsWNkm5Zfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iu2ku-0006M4-Ga; Tue, 21 Jan 2020 23:16:20 +0000
Received: from jax4mhob01.myregisteredsite.com ([64.69.218.81])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iu2kk-0006Ld-HU
 for openwrt-devel@lists.openwrt.org; Tue, 21 Jan 2020 23:16:15 +0000
Received: from mailpod.hostingplatform.com
 (atl4qobmail01pod5.registeredsite.com [10.30.71.94])
 by jax4mhob01.myregisteredsite.com (8.14.4/8.14.4) with ESMTP id
 00LNG64G023690
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL)
 for <openwrt-devel@lists.openwrt.org>; Tue, 21 Jan 2020 18:16:07 -0500
Received: (qmail 165341 invoked by uid 0); 21 Jan 2020 23:16:06 -0000
X-TCPREMOTEIP: 208.85.15.155
X-Authenticated-UID: sbrown@opensat.com
Received: from unknown (HELO 155-15-85-208.altiusbb.net)
 (sbrown@opensat.com@208.85.15.155)
 by 0 with ESMTPA; 21 Jan 2020 23:16:06 -0000
Received: from localhost (localhost [127.0.0.1])
 by 155-15-85-208.altiusbb.net (Postfix) with ESMTP id 8EFDB1540224;
 Tue, 21 Jan 2020 18:16:05 -0500 (EST)
X-Virus-Scanned: Debian amavisd-new at ewol.com
X-Spam-Flag: NO
X-Spam-Score: -2.9
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 tagged_above=-999 required=6.31
 tests=[ALL_TRUSTED=-1, BAYES_00=-1.9] autolearn=ham autolearn_force=no
Received: from 155-15-85-208.altiusbb.net ([127.0.0.1])
 by localhost (fl-server.ewol.com [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RbWDOnxAeN31; Tue, 21 Jan 2020 18:16:03 -0500 (EST)
Received: from w7.lan (w7.lan [192.168.1.9])
 by 155-15-85-208.altiusbb.net (Postfix) with ESMTP id 538901540086;
 Tue, 21 Jan 2020 18:16:03 -0500 (EST)
Message-ID: <989a2a224ceac0368c713ecc537af005eb45f035.camel@ewol.com>
From: Steve Brown <sbrown@ewol.com>
To: Bruno Pena <brunompena@gmail.com>, Petr =?UTF-8?Q?=C5=A0tetiar?=
 <ynezz@true.cz>
Date: Tue, 21 Jan 2020 18:16:03 -0500
In-Reply-To: <CADwgkMUy5--GR3du_-qj+m0Ag=fTA9pfOhDJO0DCbWcDtvHjZg@mail.gmail.com>
References: <1578138728-1256-1-git-send-email-brunompena@gmail.com>
 <0cf18b56d78d859f8d7bf30bccc6ce0762d35302.camel@ewol.com>
 <CADwgkMUhZ4TrqhiJJPHLL0aVyxxvKfABwDz-4wv_QZ_cyZvj9A@mail.gmail.com>
 <CADwgkMWzviYbcOcbY1R5C9gyY_WAwQpyyYW0eWptm369k-d7-Q@mail.gmail.com>
 <20200121104934.GA2465@makrotopia.org>
 <CADwgkMWQxN5WLeG9oyR0RdeahC+ZHeykLNGj0PfKtCvG81Qxxw@mail.gmail.com>
 <20200121185716.GL69327@meh.true.cz>
 <CADwgkMVVX_kX8w18AtGwhvwoY=MOW=_7chPScey-7T32+g1uDA@mail.gmail.com>
 <CADwgkMUy5--GR3du_-qj+m0Ag=fTA9pfOhDJO0DCbWcDtvHjZg@mail.gmail.com>
User-Agent: Evolution 3.34.1-2 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_151610_734220_53F1A230 
X-CRM114-Status: GOOD (  37.84  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [64.69.218.81 listed in list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH v2] fstools: Add support to read-only
 MTD partitions (eg. recovery images)
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <openwrt-devel.lists.openwrt.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
Cc: openwrt-devel@lists.openwrt.org, Daniel Golle <daniel@makrotopia.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

SGkgQnJ1bm8sCgpUaGF0IGRpZG4ndCBzZWVtIHRvIHNvbHZlIHRoZSBwcm9ibGVtLiBUaGUgcGFk
ZGluZyBkaWRuJ3Qgc2VlbSB0byB0YWtlCmVmZmVjdC4KCkkgcmV2ZXJ0ZWQgMGY4MWEwOTc5IGFu
ZCAwYzcwN2QzN2IuCgpkZXY6ICAgIHNpemUgICBlcmFzZXNpemUgIG5hbWUKbXRkMDogMDAwMjAw
MDAgMDAwMTAwMDAgImZhY3RvcnktdWJvb3QiCm10ZDE6IDAwMDIwMDAwIDAwMDEwMDAwICJ1LWJv
b3QiCm10ZDI6IDAwZWMwMDAwIDAwMDEwMDAwICJmaXJtd2FyZSIKbXRkMzogMDAxYTNhMDcgMDAw
MTAwMDAgImtlcm5lbCIKbXRkNDogMDBkMWM1ZjkgMDAwMTAwMDAgInJvb3RmcyIKbXRkNTogMDA5
ZjAwMDAgMDAwMTAwMDAgInJvb3Rmc19kYXRhIgptdGQ2OiAwMDAyMDAwMCAwMDAxMDAwMCAiaW5m
byIKbXRkNzogMDAwNTAwMDAgMDAwMTAwMDAgImNvbmZpZyIKbXRkODogMDAwMTAwMDAgMDAwMTAw
MDAgInBhcnRpdGlvbi10YWJsZSIKbXRkOTogMDAwMTAwMDAgMDAwMTAwMDAgImFydCIKClsgICAg
MC40MTQ2NzddIENyZWF0aW5nIDcgTVREIHBhcnRpdGlvbnMgb24gInNwaTAuMCI6ClsgICAgMC40
MTk2NTVdIDB4MDAwMDAwMDAwMDAwLTB4MDAwMDAwMDIwMDAwIDogImZhY3RvcnktdWJvb3QiClsg
ICAgMC40MjYwOTJdIDB4MDAwMDAwMDIwMDAwLTB4MDAwMDAwMDQwMDAwIDogInUtYm9vdCIKWyAg
ICAwLjQzMTkwNl0gMHgwMDAwMDAwNDAwMDAtMHgwMDAwMDBmMDAwMDAgOiAiZmlybXdhcmUiClsg
ICAgMC40Mzk3NzJdIDIgdWltYWdlLWZ3IHBhcnRpdGlvbnMgZm91bmQgb24gTVREIGRldmljZSBm
aXJtd2FyZQpbICAgIDAuNDQ1ODkxXSBDcmVhdGluZyAyIE1URCBwYXJ0aXRpb25zIG9uICJmaXJt
d2FyZSI6ClsgICAgMC40NTEwNjVdIDB4MDAwMDAwMDAwMDAwLTB4MDAwMDAwMWEzYTA3IDogImtl
cm5lbCIKWyAgICAwLjQ1Njg0MF0gMHgwMDAwMDAxYTNhMDctMHgwMDAwMDBlYzAwMDAgOiAicm9v
dGZzIgpbICAgIDAuNDYyNjQzXSBtdGQ6IGRldmljZSA0IChyb290ZnMpIHNldCB0byBiZSByb290
IGZpbGVzeXN0ZW0KWyAgICAwLjQ2OTc0Nl0gMSBzcXVhc2hmcy1zcGxpdCBwYXJ0aXRpb25zIGZv
dW5kIG9uIE1URCBkZXZpY2Ugcm9vdGZzClsgICAgMC40NzYxNDJdIDB4MDAwMDAwNGQwMDAwLTB4
MDAwMDAwZWMwMDAwIDogInJvb3Rmc19kYXRhIgpbICAgIDAuNDgyNDQxXSAweDAwMDAwMGY0MDAw
MC0weDAwMDAwMGY2MDAwMCA6ICJpbmZvIgpbICAgIDAuNDg4MDMzXSAweDAwMDAwMGY2MDAwMC0w
eDAwMDAwMGZiMDAwMCA6ICJjb25maWciClsgICAgMC40OTM4NTZdIDB4MDAwMDAwZmMwMDAwLTB4
MDAwMDAwZmQwMDAwIDogInBhcnRpdGlvbi10YWJsZSIKWyAgICAwLjUwMDQ5NF0gMHgwMDAwMDBm
ZjAwMDAtMHgwMDAwMDEwMDAwMDAgOiAiYXJ0IgoKCmRpZmYgLS1naXQgYS90YXJnZXQvbGludXgv
YXRoNzkvaW1hZ2UvY29tbW9uLXRwLWxpbmsubWsgYi90YXJnZXQvbGludXgvYXRoNzkvaW1hZ2Uv
Y29tbW9uLXRwLWxpbmsubWsKaW5kZXggOGFhNmE1YTJiZS4uODllNzNhODVmMyAxMDA2NDQKLS0t
IGEvdGFyZ2V0L2xpbnV4L2F0aDc5L2ltYWdlL2NvbW1vbi10cC1saW5rLm1rCisrKyBiL3Rhcmdl
dC9saW51eC9hdGg3OS9pbWFnZS9jb21tb24tdHAtbGluay5tawpAQCAtNjMsNyArNjMsNyBAQCBl
bmRlZgogCiBkZWZpbmUgRGV2aWNlL3RwbGluay1zYWZlbG9hZGVyCiAgICQoRGV2aWNlL3RwbGlu
aykKLSAgS0VSTkVMIDo9IGtlcm5lbC1iaW4gfCBhcHBlbmQtZHRiIHwgbHptYSB8IHRwbGluay12
MS1oZWFkZXIgLU8KKyAgS0VSTkVMIDo9IGtlcm5lbC1iaW4gfCBhcHBlbmQtZHRiIHwgbHptYSB8
IHBhZC10byAkJCQkKEJMT0NLU0laRSkgfCB0cGxpbmstdjEtaGVhZGVyIC1PCiAgIElNQUdFL3N5
c3VwZ3JhZGUuYmluIDo9IGFwcGVuZC1yb290ZnMgfCB0cGxpbmstc2FmZWxvYWRlciBzeXN1cGdy
YWRlIHwgXAogICAgIGFwcGVuZC1tZXRhZGF0YSB8IGNoZWNrLXNpemUgJCQkJChJTUFHRV9TSVpF
KQogICBJTUFHRS9mYWN0b3J5LmJpbiA6PSBhcHBlbmQtcm9vdGZzIHwgdHBsaW5rLXNhZmVsb2Fk
ZXIgZmFjdG9yeQoKQ2FuIHlvdSB2ZXJpZnkgdGhhdCBJIGRpZCB0aGlzIHJpZ2h0PwoKU3RldmUK
CgpPbiBUdWUsIDIwMjAtMDEtMjEgYXQgMjI6MTAgKzAxMDAsIEJydW5vIFBlbmEgd3JvdGU6Cj4g
SGkgZXZlcnlvbmUsCj4gCj4gSSB3YXMgZmluYWxseSBhYmxlIHRvIHJlcGxpY2F0ZSB0aGUgaXNz
dWUgeW91IGFyZSBvYnNlcnZpbmcuCj4gCj4gVGhlIHByb2JsZW0gY29tZXMgZnJvbSB0aGUgZmFj
dCB0aGF0IHRoZSBrZXJuZWwgcGFydGl0aW9uIG9uIHRoZSBUUC0KPiBMaW5rIGltYWdlcyBpcyBu
b3QgcGFkZGVkIHRvIHRoZSB3cml0ZSBibG9ja3NpemUgLSB3aGljaCBjYW4gYmUKPiBvYnNlcnZl
ZCBvbiB0aGUgZG1lc2cgZnJvbSBTdGV2ZToKPiBbICAgIDAuNDUwOTg3XSAweDAwMDAwMDAwMDAw
MC0weDAwMDAwMDFhMzllYSA6ICJrZXJuZWwiCj4gWyAgICAwLjQ1Njc3Ml0gMHgwMDAwMDAxYTM5
ZWEtMHgwMDAwMDBlYzAwMDAgOiAicm9vdGZzIgo+IFRoZSBibG9ja3NpemUgY2FuIGJlIHNlZW4g
b2JzZXJ2ZWQgb24gdGhlIC9wcm9jL210ZCBhbmQgZm9yIHRoYXQKPiBkZXZpY2UgaXMgMHgxMDAw
MDoKPiBtdGQzOiAwMDFhMzhkZSAwMDAxMDAwMCAia2VybmVsIgo+IG10ZDQ6IDAwZDFjNzIyIDAw
MDEwMDAwICJyb290ZnMiCj4gVGhpcyB0cmlnZ2VycyB0aGUgZm9sbG93aW5nIGNvZGUgb24gZHJp
dmVycy9tdGQvbXRkcGFydC5jIHRoYXQKPiByZW1vdmVzIHRoZSB3cml0ZSBmbGFnIGZyb20gdGhl
IHJvb3RmcyBwYXJ0aXRpb246Cj4gICAgICAgICB0bXAgPSBwYXJ0X2Fic29sdXRlX29mZnNldChw
YXJlbnQpICsgc2xhdmUtPm9mZnNldDsKPiAgICAgICAgIHJlbWFpbmRlciA9IGRvX2Rpdih0bXAs
IHdyX2FsaWdubWVudCk7Cj4gICAgICAgICBpZiAoKHNsYXZlLT5tdGQuZmxhZ3MgJiBNVERfV1JJ
VEVBQkxFKSAmJiByZW1haW5kZXIpIHsKPiAgICAgICAgICAgICAgICAgLyogRG9lc24ndCBzdGFy
dCBvbiBhIGJvdW5kYXJ5IG9mIG1ham9yIGVyYXNlIHNpemUgKi8KPiAgICAgICAgICAgICAgICAg
c2xhdmUtPm10ZC5mbGFncyB8PSBNVERfRVJBU0VfUEFSVElBTDsKPiAgICAgICAgICAgICAgICAg
aWYgKCgodTMyKXNsYXZlLT5tdGQuc2l6ZSkgPiBwYXJlbnQtPmVyYXNlc2l6ZSkKPiAgICAgICAg
ICAgICAgICAgICAgICAgICBzbGF2ZS0+bXRkLmZsYWdzICY9IH5NVERfV1JJVEVBQkxFOwo+ICAg
ICAgICAgICAgICAgICBlbHNlCj4gICAgICAgICAgICAgICAgICAgICAgICAgc2xhdmUtPm10ZC5l
cmFzZXNpemUgPSBzbGF2ZS0+bXRkLnNpemU7Cj4gICAgICAgICB9Cj4gCj4gICAgICAgICB0bXAg
PSBwYXJ0X2Fic29sdXRlX29mZnNldChwYXJlbnQpICsgc2xhdmUtPm9mZnNldCArIHNsYXZlLQo+
ID5tdGQuc2l6ZTsKPiAgICAgICAgIHJlbWFpbmRlciA9IGRvX2Rpdih0bXAsIHdyX2FsaWdubWVu
dCk7Cj4gICAgICAgICBpZiAoKHNsYXZlLT5tdGQuZmxhZ3MgJiBNVERfV1JJVEVBQkxFKSAmJiBy
ZW1haW5kZXIpIHsKPiAgICAgICAgICAgICAgICAgc2xhdmUtPm10ZC5mbGFncyB8PSBNVERfRVJB
U0VfUEFSVElBTDsKPiAKPiAgICAgICAgICAgICAgICAgaWYgKCh1MzIpc2xhdmUtPm10ZC5zaXpl
ID4gcGFyZW50LT5lcmFzZXNpemUpCj4gICAgICAgICAgICAgICAgICAgICAgICAgc2xhdmUtPm10
ZC5mbGFncyAmPSB+TVREX1dSSVRFQUJMRTsKPiAgICAgICAgICAgICAgICAgZWxzZQo+ICAgICAg
ICAgICAgICAgICAgICAgICAgIHNsYXZlLT5tdGQuZXJhc2VzaXplID0gc2xhdmUtPm10ZC5zaXpl
Owo+ICAgICAgICAgfQo+IE5vdyB3ZSBoYXZlIGEgcm9vdGZzIHBhcnRpdGlvbiB0aGF0IGlzIHNl
dCB0byByZWFkLW9ubHksIGFuZCB3aXRoIHRoZQo+IGtlcm5lbCBwYXRjaCB0aGF0IGZvcmNlcyBz
dWItcGFydGl0aW9ucyB0byBtYXRjaCB0aGUgYWNjZXNzIG1vZGUgb2YKPiB0aGUgcGFyZW50LCB3
aGVuIHRoZSBzcGxpdCBydW5zIGl0IHdpbGwgZm9yY2UgdGhlIHJvb3Rmc19kYXRhCj4gcGFydGl0
aW9uIHRvIG1hdGNoIHRoZSBwYXJlbnQgYWNjZXNzIG1vZGUgKHJlYWQtb25seSkuCj4gCj4gTXkg
c3VnZ2VzdGlvbiBpcyB0byBjaGFuZ2UgdGhlIHRhcmdldC9saW51eC9hdGg3OS9pbWFnZS9jb21t
b24tdHAtCj4gbGluay5tayBzbyBpdCBwYWRzIHRoZSBrZXJuZWwgcGFydGl0aW9uIHRvIHRoZSBi
bG9ja3NpemUgKHVudGVzdGVkCj4gc3VnZ2VzdGlvbiBiZWxvdyk6Cj4gZGVmaW5lIERldmljZS90
cGxpbmstc2FmZWxvYWRlcgo+ICAgJChEZXZpY2UvdHBsaW5rKQo+ICAgS0VSTkVMIDo9IGtlcm5l
bC1iaW4gfCBhcHBlbmQtZHRiIHwgbHptYSB8IHBhZC10byAkJCQkKEJMT0NLU0laRSkgfAo+IHRw
bGluay12MS1oZWFkZXIgLU8KPiBbLi4uXQo+IFdvdWxkIGFueSBvZiB5b3UgYmUgd2lsbGluZyB0
byBzcGVuZCBzb21lIHRpbWUgdGVzdGluZyB0aGlzIGNoYW5nZSBvbgo+IHlvdXIgVFAtTGluaz8K
PiAKPiBUaGFuayB5b3UgYW5kIGJlc3QgcmVnYXJkcywKPiBCcnVubyBQZW5hCj4gCj4gT24gVHVl
LCBKYW4gMjEsIDIwMjAgYXQgODoxNSBQTSBCcnVubyBQZW5hIDxicnVub21wZW5hQGdtYWlsLmNv
bT4KPiB3cm90ZToKPiA+IEhpIFBldHIsCj4gPiAKPiA+IFRoYW5rIHlvdSBmb3IgcmV2ZXJ0aW5n
IHRoZSBwYXRjaGVzLgo+ID4gCj4gPiBJJ20gdHJ5aW5nIHRvIHJlcGxpY2F0ZSB0aGUgaXNzdWUg
YnV0IHNvIGZhciBJIGhhdmVuJ3QgaGFkIGFueQo+ID4gbHVjaywgYW5kIGp1c3QgYnkgbG9va2lu
ZyBhdCB0aGUgY29kZSBJJ20gbm90IHNlZWluZyB3aGVyZS93aGF0IGlzCj4gPiBjb3VsZCBiZSBi
cmVha2luZy4KPiA+IAo+ID4gUmVnYXJkaW5nIHRoZSB1cHN0cmVhbSBwYXRjaCwgdGhhdCBvbmUg
aXMganVzdCBhbiBlbmFibGVyIChyZWFkOiBpdAo+ID4gb25seSBleHRlbmRzIHRoZSAibXRkX2Fk
ZF9wYXJ0aXRpb24iIGZ1bmN0aW9uIGJ1dCBpdCBkb2VzIG5vdCBhZGQKPiA+IGFueSBjb2RlIHRv
IGZvcmNlIHRoZSBhY2Nlc3MgbW9kZSBvbiBzdWItcGFydGl0aW9ucykuCj4gPiBUaGUgcmVhc29u
IGZvciB0aGlzIGlzIGJlY2F1c2UgdGhpcyBlbmZvcmNlbWVudCBpcyBkb25lIG9uIHRoZSBtdGQK
PiA+IHBhcnNlciBjb2RlIHRoYXQgaXMgT3BlbldydCBzcGVjaWZpYyBhbmQgaW1wbGVtZW50ZWQg
dmlhIGtlcm5lbAo+ID4gcGF0Y2hlcyAobm90IHByZXNlbnQgb24gdXBzdHJlYW0pLgo+ID4gCj4g
PiBCZXN0IHJlZ2FyZHMsCj4gPiBCcnVubyBQZW5hCj4gPiAKPiA+IE9uIFR1ZSwgSmFuIDIxLCAy
MDIwIGF0IDc6NTcgUE0gUGV0ciDFoHRldGlhciA8eW5lenpAdHJ1ZS5jej4gd3JvdGU6Cj4gPiA+
IEJydW5vIFBlbmEgPGJydW5vbXBlbmFAZ21haWwuY29tPiBbMjAyMC0wMS0yMSAxNDo1Mzo1NF06
Cj4gPiA+IAo+ID4gPiBIaSwKPiA+ID4gCj4gPiA+ID4gQmFzZWQgb24gdGhlIGxhc3QgY29tbWVu
dCBmcm9tIFN0ZXZlIChmc3Rvb2xzIHBhdGNoIHdhcyBub3QKPiA+ID4gcmV2ZXJ0ZWQpLCBJJ20K
PiA+ID4gPiBub3Qgc3VyZSBpZiB0aGF0J3MgdGhlIHJvb3QgY2F1c2UuCj4gPiA+IAo+ID4gPiB5
b3UgbmVlZCB0byBmaW5kIG91dCwgYnV0IHRoYXQgRGFuaWVsJ3MgcmVtYXJrIHNlZW1zIGxlZ2l0
IHRvIG1lLAo+ID4gPiB5b3VyIHBhdGNoCj4gPiA+IGxpa2VseSBjaGFuZ2VkIHRoZSBtdGQgZGV2
aWNlIG9wZW4gb3JkZXIvZmxhZ3MuCj4gPiA+IAo+ID4gPiA+IFRoZSBrZXJuZWwgcGF0Y2ggKHdo
aWNoIHdoZW4gcmV2ZXJ0ZWQgbWFrZXMgcm9vdGZzX2RhdGEKPiA+ID4gd3JpdGFibGUgYWdhaW4p
Cj4gPiA+ID4gb25seSBlbmZvcmNlcyB0aGUgcGFyZW50IG10ZCBhY2Nlc3MgbW9kZSBvbiB0aGUg
c3ViLXBhcnRpdGlvbnMuCj4gPiA+IAo+ID4gPiBGWUkgSSBjdXJyZW50bHkgZG9udCBoYXZlIHRp
bWUgdG8gZml4IHRoYXQgcmVncmVzc2lvbiBteXNlbGYgYW5kCj4gPiA+IHNpbmNlIGl0cwo+ID4g
PiBsaWtlbHkgYWZmZWN0aW5nIGEgbG90IG9mIHVzZXJzLCBzbyBJJ3ZlIHJldmVydGVkIHRob3Nl
IGNoYW5nZXMuCj4gPiA+IEkgdGhpbmssIHRoYXQKPiA+ID4gdGhpcyBjaGFuZ2UgaXMgdXNlZnVs
LCBzbyBJJ20gc3RpbGwgd2lsbGluZyB0byBtZXJnZSBpdCBvbmNlCj4gPiA+IGZpeGVkLCBubwo+
ID4gPiB3b3JyaWVzLiBIYXZpbmcgc29tZSB1cHN0cmVhbSBmZWVkYmFjayBiZWZvcmVoYW5kIHdv
dWxkIGJlIGEKPiA+ID4gcGx1cy4KPiA+ID4gCj4gPiA+IEJUVyBpdCB3b3VsZCBiZSBmYWlyIHRv
IGluZm9ybSB1cHN0cmVhbSBhYm91dCB0aGlzIHBvc3NpYmxlIGlzc3VlCj4gPiA+IGFzIHdlbGws
IHNvCj4gPiA+IHRoZSBwYXRjaCB3b250IGdldCBtZXJnZWQgaW4gaXRzIGN1cnJlbnQgc3RhdGUs
IHVubGVzcyBpdHMgZG91YmxlCj4gPiA+IGNoZWNrZWQgKG9yCj4gPiA+IGp1c3Qgd3JpdGUgdGhl
bSwgdGhhdCB5b3UncmUgcGxhbm5pbmcgdjIsIHNvIHRoZSBwYXRjaCBpcyByZW1vdmVkCj4gPiA+
IGZyb20gdGhlaXIKPiA+ID4gUGF0Y2h3b3JrKS4KPiA+ID4gCj4gPiA+IC0tIHluZXp6CgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZl
bCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xp
c3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
