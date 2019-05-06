Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A22214838
	for <lists+openwrt-devel@lfdr.de>; Mon,  6 May 2019 12:14:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
	Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=SpIsQxRxEPK6zbxRS26ZwIi29UR7djHdmIJuFXuHetQ=; b=kjlIHkqXmlYzsV
	bTGQMt+BMC73Ft01A8BeEtv/y27I3gztRbiCXEdKqFDylre+8r3XCnu9+k0ZpgTX2Hm1ehjSMfcaP
	TBjuiQn4N18unOkCFpfrv21mqDoM29WPHjdWr+S5IRTLZhw1fuAT3dafUPZM58tWGIDCPl7Qp82B3
	+oBM8XN1G0xdOhB7g8ZknWDAGf/T0g/sK0YIk6dDEt+Hc92w8sNq69Tx473IUMTDta2OlIDmvVqyG
	qBv3j3svum5ko9wy6gLzUyW8cAlT+2GL8HBt1x6pnmY1WdVFzyDTBcw4Z3b2SGZhR6v7j7y1JCJH1
	GyYGu6V2fkvHN7xO3gMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNadS-00013G-97; Mon, 06 May 2019 10:14:14 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNadL-00012v-SS
 for openwrt-devel@lists.openwrt.org; Mon, 06 May 2019 10:14:09 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id A70643930;
 Mon,  6 May 2019 12:14:05 +0200 (CEST)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id 3fbc0ca2;
 Mon, 6 May 2019 12:14:04 +0200 (CEST)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Mon,  6 May 2019 12:13:58 +0200
Message-Id: <1557137638-1558-1-git-send-email-ynezz@true.cz>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
In-Reply-To: <1557087260-32680-3-git-send-email-ynezz@true.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_031408_069268_EA091281 
X-CRM114-Status: UNSURE (   8.71  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
Subject: [OpenWrt-Devel] [PATCH v2] lantiq: image: build initramfs only for
 FRITZ7362SL
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
Cc: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>,
 Stijn Segers <foss@volatilesystems.org>, David Bauer <mail@david-bauer.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Q29tbWl0ICJsYW50aXEveHJ4MjAwOiBlbmFibGUgaW5pdHJhbWZzIGltYWdlcyIgZW5hYmxlZCBj
cmVhdGlvbiBvZgppbml0cmFtZnMgaW1hZ2VzIGZvciBhbGwgZGV2aWNlcyBpbiBsYW50aXEncyB4
cngyMDAgc3VidGFyZ2V0LCBqdXN0CmJlY2F1c2UgRlJJVFo3MzYyU0wgbmVlZHMgaW5pdHJhbWZz
IGR1cmluZyBPcGVuV3J0IGluc3RhbGF0aW9uLgoKVGhlbiBEYXZpZCBCYXVlciBpbmZvcm1lZCBt
ZSwgdGhhdCBGUklUWiFCb3ggNzQxMiBhbHNvIG5lZWRzIGFuIGluaXRyYW1mcwpmb3IgaW5pdGlh
bCBpbnN0YWxsYXRpb24gWzFdLCBzbyBJJ3ZlIGFkZGVkIHRoaXMgZGV2aWNlIGludG8gdGhpcyBw
YXRjaCBhcwp3ZWxsLgoKU28gdGhpcyBjb21taXQgY2hhbmdlcyBsYW50aXEgdG8gc2VsZWN0aXZl
LXJhbWRpc2sgZmVhdHVyZSBhbmQgYWRkcwpORUVEU19JTklUUkFNRlM9MSB0byBGUklUWjczNjJT
TCBhbmQgRlJJVFohQm94IDc0MTIgZGV2aWNlcyBvbmx5LgoKQ2M6IERhdmlkIEJhdWVyIDxtYWls
QGRhdmlkLWJhdWVyLm5ldD4KQ2M6IFN0aWpuIFNlZ2VycyA8Zm9zc0B2b2xhdGlsZXN5c3RlbXMu
b3JnPgpTaWduZWQtb2ZmLWJ5OiBQZXRyIMWgdGV0aWFyIDx5bmV6ekB0cnVlLmN6PgotLS0KCiBD
aGFuZ2VzIHNpbmNlIHYxOgoKICAqIGFkZGVkIEZSSVRaIUJveCA3NDEyIGRldmljZQoKIHRhcmdl
dC9saW51eC9sYW50aXEvaW1hZ2UvTWFrZWZpbGUgICB8IDIgKysKIHRhcmdldC9saW51eC9sYW50
aXEveHJ4MjAwL3RhcmdldC5tayB8IDIgKy0KIDIgZmlsZXMgY2hhbmdlZCwgMyBpbnNlcnRpb25z
KCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvdGFyZ2V0L2xpbnV4L2xhbnRpcS9pbWFn
ZS9NYWtlZmlsZSBiL3RhcmdldC9saW51eC9sYW50aXEvaW1hZ2UvTWFrZWZpbGUKaW5kZXggZmNh
M2ZjZS4uOTk0ZGVlNCAxMDA2NDQKLS0tIGEvdGFyZ2V0L2xpbnV4L2xhbnRpcS9pbWFnZS9NYWtl
ZmlsZQorKysgYi90YXJnZXQvbGludXgvbGFudGlxL2ltYWdlL01ha2VmaWxlCkBAIC02NzQsNiAr
Njc0LDcgQEAgZGVmaW5lIERldmljZS9hdm1fZnJpdHo3NDEyCiAgIElNQUdFX1NJWkUgOj0gNDkx
NTJrCiAgIERFVklDRV9USVRMRSA6PSBBVk0gRlJJVFohQm94IDc0MTIKICAgREVWSUNFX1BBQ0tB
R0VTIDo9IGttb2QtYXRoOWsga21vZC1vd2wtbG9hZGVyIHdwYWQtbWluaSBrbW9kLWx0cS10YXBp
IGttb2QtbHRxLXZtbWMgZnJpdHotdGZmcy1uYW5kIGZyaXR6LWNhbGRhdGEKKyAgTkVFRFNfSU5J
VFJBTUZTIDo9IDEKIGVuZGVmCiBUQVJHRVRfREVWSUNFUyArPSBhdm1fZnJpdHo3NDEyCiAKQEAg
LTY4NSw2ICs2ODYsNyBAQCBkZWZpbmUgRGV2aWNlL2F2bV9mcml0ejczNjJzbAogICBERVZJQ0Vf
RFRTIDo9IEZSSVRaNzM2MlNMCiAgIERFVklDRV9USVRMRSA6PSBBVk0gRlJJVFohQm94IDczNjIg
U0wKICAgREVWSUNFX1BBQ0tBR0VTIDo9IGttb2QtYXRoOWsga21vZC1vd2wtbG9hZGVyIHdwYWQt
YmFzaWMga21vZC11c2ItZHdjMiBmcml0ei10ZmZzCisgIE5FRURTX0lOSVRSQU1GUyA6PSAxCiBl
bmRlZgogVEFSR0VUX0RFVklDRVMgKz0gYXZtX2ZyaXR6NzM2MnNsCiAKZGlmZiAtLWdpdCBhL3Rh
cmdldC9saW51eC9sYW50aXEveHJ4MjAwL3RhcmdldC5tayBiL3RhcmdldC9saW51eC9sYW50aXEv
eHJ4MjAwL3RhcmdldC5tawppbmRleCA0ZDkyYjI1Li44NzQwNzk0IDEwMDY0NAotLS0gYS90YXJn
ZXQvbGludXgvbGFudGlxL3hyeDIwMC90YXJnZXQubWsKKysrIGIvdGFyZ2V0L2xpbnV4L2xhbnRp
cS94cngyMDAvdGFyZ2V0Lm1rCkBAIC0xLDcgKzEsNyBAQAogQVJDSDo9bWlwcwogU1VCVEFSR0VU
Oj14cngyMDAKIEJPQVJETkFNRTo9WFJYMjAwCi1GRUFUVVJFUzo9c3F1YXNoZnMgYXRtIG5hbmQg
cmFtZGlzaworRkVBVFVSRVM6PXNxdWFzaGZzIGF0bSBuYW5kIHNlbGVjdGl2ZS1yYW1kaXNrCiBD
UFVfVFlQRTo9MjRrYwogCiBERUZBVUxUX1BBQ0tBR0VTKz1rbW9kLWxlZHMtZ3BpbyBcCi0tIAox
LjkuMQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9w
ZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcK
aHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
