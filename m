Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A2421B89EB
	for <lists+openwrt-devel@lfdr.de>; Sun, 26 Apr 2020 01:18:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:
	To:From:Date:In-Reply-To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=rpLvurF2H55SzxiAhk/7sPVeZRBg1Gr4Q+yRSs6IG34=; b=s1NcjzW59dwprp
	DaFXXCvtsvqhaH7lpq2OPd+EkvGutVDjJG73NR1ILCow23O4DmAtCzA2+qyHDVRioRmXx/WkAcZc4
	soCguB5hyn7ZFeSM5Jorp1bKQuBRJuoSEl24skkJ+FeAE25Lojdhs94xqKo3v1U0Iki6J99H9nApZ
	kb6J4FzVVxeV8oRDj8zfNaP8t3M2vs/zeNe1RZhq9D4Z635pmG6klpdryzHEcqfAsmciveR3LoKki
	Vx2I8ZD1UrJQ0TSnBSrhoLqwv4ynMBeY4NbW9I7ahoXCMK5uA/RPT9zGPGro6M4MfEl6EAw4Js8SF
	TF2j20Z5A04Y2ZuVWV+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSU3r-0001pU-2d; Sat, 25 Apr 2020 23:18:15 +0000
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSU3j-0001mr-7a
 for openwrt-devel@lists.openwrt.org; Sat, 25 Apr 2020 23:18:09 +0000
X-Originating-IP: 72.234.141.215
Received: from localhost (udp224251uds.hawaiiantel.net [72.234.141.215])
 (Authenticated sender: mail@aparcar.org)
 by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id 1490F20006;
 Sat, 25 Apr 2020 23:17:55 +0000 (UTC)
In-Reply-To: <20200425105617.26258-1-ynezz@true.cz>
Date: Sat, 25 Apr 2020 13:16:56 -1000
From: "Paul Spooren" <mail@aparcar.org>
To: =?utf-8?q?Petr_=C5=A0tetiar?= <ynezz@true.cz>,
 <openwrt-devel@lists.openwrt.org>
Message-Id: <C2AO6ZID0GIC.3I5DV5WF20LS7@tb>
Tested-by: Paul Spooren <mail@aparcar.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200425_161807_409971_D1D04D52 
X-CRM114-Status: GOOD (  10.99  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.200 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH] x86: fix unusable squashfs images by
 adding missing padding
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
Cc: =?utf-8?q?Petr_=C5=A0tetiar?= <ynezz@true.cz>,
 Tomasz Maciej Nowak <tomek_n@o2.pl>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

T24gU2F0IEFwciAyNSwgMjAyMCBhdCAyOjU2IEFNIFBTVCwgUGV0ciDFoHRldGlhciB3cm90ZToK
PiBJdCB3YXMgcmVwb3J0ZWQsIHRoYXQgYWZ0ZXIgaW1hZ2UgZ2VuZXJhdGlvbiByZXdvcmsKPiB4
ODYtNjQtZ2VuZXJpYy1zcXVhc2hmcy1yb290ZnMuaW1nIGltYWdlIHdvbid0IGJvb3Qgb24gWGVu
U2VydmVyIHg4Nl82NAo+IGFueW1vcmU6Cj4KPiBGMkZTLWZzICh4dmRhKTogTWFnaWMgTWlzbWF0
Y2gsIHZhbGlkKDB4ZjJmNTIwMTApIC0gcmVhZCgweDg0Mjg5OTYwKQo+IEYyRlMtZnMgKHh2ZGEp
OiBDYW4ndCBmaW5kIHZhbGlkIEYyRlMgZmlsZXN5c3RlbSBpbiAxdGggc3VwZXJibG9jawo+IEYy
RlMtZnMgKHh2ZGEpOiBNYWdpYyBNaXNtYXRjaCwgdmFsaWQoMHhmMmY1MjAxMCkgLSByZWFkKDB4
NGU4ZWUyMjMpCj4gRjJGUy1mcyAoeHZkYSk6IENhbid0IGZpbmQgdmFsaWQgRjJGUyBmaWxlc3lz
dGVtIGluIDJ0aCBzdXBlcmJsb2NrCj4gTGlzdCBvZiBhbGwgcGFydGl0aW9uczoKPiBjYTAwIDQy
MDcgeHZkYQo+IGRyaXZlcjogdmJkCj4gTm8gZmlsZXN5c3RlbSBjb3VsZCBtb3VudCByb290LCB0
cmllZDoKPiBleHQzCj4gZXh0Mgo+IGV4dDQKPiBzcXVhc2hmcwo+IGlzbzk2NjAKPiBmMmZzCj4K
PiBLZXJuZWwgcGFuaWMgLSBub3Qgc3luY2luZzogVkZTOiBVbmFibGUgdG8gbW91bnQgcm9vdCBm
cyBvbgo+IHVua25vd24tYmxvY2soMjAyLDApCj4KPiBTbyBsZXRzIGZpeCB0aGlzIGJ5IGFkZGlu
ZyBiYWNrIHBhZGRpbmcgd2hpY2ggd2FzIGludHJvZHVjZWQgaW4gY29tbWl0Cj4gYTE3ZDk0ODJm
NWUyICgieDg2OiBpbWFnZTogZml4IHNtYWxsIGRpc2sgc3BhY2UgaW4gc3F1YXNoZnMgb3Zlcmxh
eSIpLgo+Cj4gUmVmOiBGUyMzMDM2Cj4gQ2M6IFBhdWwgU3Bvb3JlbiA8bWFpbEBhcGFyY2FyLm9y
Zz4KPiBDYzogVG9tYXN6IE1hY2llaiBOb3dhayA8dG9tZWtfbkBvMi5wbD4KPiBGaXhlczogMjU4
ZjA3MGQxYTRmICgieDg2OiBmaXggbWlzc2luZyBzcXVhc2hmcyBhbmQgZXh0NCByb290ZnMgaW1h
Z2VzIikKPiBGaXhlczogY2IwMDdhN2JmNjE5ICgieDg2OiBzd2l0Y2ggaW1hZ2UgZ2VuZXJhdGlv
biB0byBuZXcgY29kZSIpCj4gU2lnbmVkLW9mZi1ieTogUGV0ciDFoHRldGlhciA8eW5lenpAdHJ1
ZS5jej4KPiAtLS0KPiB0YXJnZXQvbGludXgveDg2L2ltYWdlL01ha2VmaWxlIHwgNCArKy0tCj4g
MSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKPgo+IGRpZmYg
LS1naXQgYS90YXJnZXQvbGludXgveDg2L2ltYWdlL01ha2VmaWxlCj4gYi90YXJnZXQvbGludXgv
eDg2L2ltYWdlL01ha2VmaWxlCj4gaW5kZXggNzJhNGQ2NmFkNzMxLi4xNzRjMjcyYTUxNWUgMTAw
NjQ0Cj4gLS0tIGEvdGFyZ2V0L2xpbnV4L3g4Ni9pbWFnZS9NYWtlZmlsZQo+ICsrKyBiL3Rhcmdl
dC9saW51eC94ODYvaW1hZ2UvTWFrZWZpbGUKPiBAQCAtMTExLDggKzExMSw4IEBAIGRlZmluZSBE
ZXZpY2UvRGVmYXVsdAo+IElNQUdFL2NvbWJpbmVkLmltZy5neiA6PSBncnViLWNvbmZpZyBwYyB8
IGNvbWJpbmVkIHwgZ3J1Yi1pbnN0YWxsIHwgZ3ppcAo+IHwgYXBwZW5kLW1ldGFkYXRhCj4gSU1B
R0UvY29tYmluZWQudmRpIDo9IGdydWItY29uZmlnIHBjIHwgY29tYmluZWQgfCBncnViLWluc3Rh
bGwgfAo+IHFlbXUtaW1hZ2UgdmRpCj4gSU1BR0UvY29tYmluZWQudm1kayA6PSBncnViLWNvbmZp
ZyBwYyB8IGNvbWJpbmVkIHwgZ3J1Yi1pbnN0YWxsIHwKPiBxZW11LWltYWdlIHZtZGsKPiAtIElN
QUdFL3Jvb3Rmcy5pbWcgOj0gYXBwZW5kLXJvb3Rmcwo+IC0gSU1BR0Uvcm9vdGZzLmltZy5neiA6
PSBhcHBlbmQtcm9vdGZzIHwgZ3ppcAo+ICsgSU1BR0Uvcm9vdGZzLmltZyA6PSBhcHBlbmQtcm9v
dGZzIHwgcGFkLXRvICQoUk9PVEZTX1BBUlRTSVpFKQo+ICsgSU1BR0Uvcm9vdGZzLmltZy5neiA6
PSBhcHBlbmQtcm9vdGZzIHwgcGFkLXRvICQoUk9PVEZTX1BBUlRTSVpFKSB8Cj4gZ3ppcAo+IEFS
VElGQUNUL2ltYWdlLWVmaS5pc28gOj0gZ3J1Yi1jb25maWcgaXNvIHwgaXNvIGVmaQo+IElNQUdF
L2NvbWJpbmVkLWVmaS5pbWcgOj0gZ3J1Yi1jb25maWcgZWZpIHwgY29tYmluZWQgZWZpIHwgZ3J1
Yi1pbnN0YWxsCj4gZWZpIHwgYXBwZW5kLW1ldGFkYXRhCj4gSU1BR0UvY29tYmluZWQtZWZpLmlt
Zy5neiA6PSBncnViLWNvbmZpZyBlZmkgfCBjb21iaW5lZCBlZmkgfAo+IGdydWItaW5zdGFsbCBl
ZmkgfCBnemlwIHwgYXBwZW5kLW1ldGFkYXRhCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1k
ZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4v
bGlzdGluZm8vb3BlbndydC1kZXZlbAo=
