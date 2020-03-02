Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 93704175B10
	for <lists+openwrt-devel@lfdr.de>; Mon,  2 Mar 2020 13:58:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=daNyIXu7TFCBFEhrZjNJL41eqwrbDrdDksWQE9OyAdA=; b=YJY0aHKmNFRcgK
	o7C04vrjyaa4e750IY+qks+fZs9pv+yA2gepdMa56i9Arpv+uCzMQkRNpSnWeQxpuZXIEd2z54MNY
	dQOUzMlm0BcBsbQN+NjBbZzaqcjW6mRSn2wUoGqcL/trqBDVtLFpEuhu0Idl+w3KZpw2VD8URsMgl
	WDyXh/FNneU7rfJ/YylTtM+zp+NWVT9TMj+I+yKiC0tKdTqt2/A+zgrm7T51t32WPkeXY/hNCaiSF
	xjucjl6snQoSTdXk+dbbFLH8dLhnOKWVs927eoktMYqPftR8KmFDM6/9OtcLaHuDSEDumF4WqdURv
	swxbHQ7+Lek9PmE/pn7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8kef-0003PU-4R; Mon, 02 Mar 2020 12:58:41 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8keW-0003P5-6q
 for openwrt-devel@lists.openwrt.org; Mon, 02 Mar 2020 12:58:34 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 6293E36C7;
 Mon,  2 Mar 2020 13:58:29 +0100 (CET)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id 05311a6b;
 Mon, 2 Mar 2020 13:58:15 +0100 (CET)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Mon,  2 Mar 2020 13:58:20 +0100
Message-Id: <20200302125820.12353-1-ynezz@true.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_045832_397467_3833E3D7 
X-CRM114-Status: UNSURE (   9.88  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH] Revert "kernel: rewrite
 run_parsers_by_type() to use add_mtd_partitions()"
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
Cc: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>,
 =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

VGhpcyByZXZlcnRzIGNvbW1pdCAxNWEwNzAxY2RkZThlZWFlMmE1NDg4MGI4MTNjZGI4Y2RjMDlh
Mzg0LgoKU2VlbXMgbGlrZSB0aGlzIHBhdGNoIGhhcyBpbnRyb2R1Y2VkIHNvbWUgcmVncmVzc2lv
bnMgb24gdGhlIHJhbWlwcwp0YXJnZXQgd2hpY2ggaXMgc3RpbGwgb24gNC4xNCBrZXJuZWwgYXMg
dGhpcyBjb21taXQgdG91Y2hlcyBvbmx5IDQuMTQKa2VybmVsIHBhdGNoZXMuCgogamZmczI6IEVy
YXNlIGF0IDB4MDAzNzgwMDAgZmFpbGVkIGltbWVkaWF0ZWx5OiBlcnJubyAtMjIKIGpmZnMyOiBO
b2RlIENSQyBmZmZmZmZmZiAhPSBjYWxjdWxhdGVkIENSQyBmMDllNzg0NSBmb3Igbm9kZSBhdCAw
MGMwODUxMAoKUmVmOiBGUyMyODM3LCBGUyMyODYyClJlZjogaHR0cHM6Ly9mb3J1bS5vcGVud3J0
Lm9yZy90L2pmZnMyLXBhcnRpdGlvbi1ub3Qtc2F2ZS1uZXctcGFja2FnZS1pbnN0YWxsYXRpb24t
b3Itc2F2ZS1zZXR0aW5ncwpDYzogUmFmYcWCIE1pxYJlY2tpIDxyYWZhbEBtaWxlY2tpLnBsPgpT
aWduZWQtb2ZmLWJ5OiBQZXRyIMWgdGV0aWFyIDx5bmV6ekB0cnVlLmN6PgotLS0KIC4uLmZvci1k
aWZmZXJlbnQtcGFydGl0aW9uLXBhcnNlci10eXBlcy5wYXRjaCB8IDMzICsrKysrKysrKysrKy0t
LS0tLS0KIC4uLmFyc2Vycy1mb3Itcm9vdGZzLWFuZC1maXJtd2FyZS1zcGxpdC5wYXRjaCB8ICA0
ICstLQogLi4uLzQwNC1tdGQtYWRkLW1vcmUtaGVscGVyLWZ1bmN0aW9ucy5wYXRjaCAgIHwgIDIg
Ky0KIDMgZmlsZXMgY2hhbmdlZCwgMjQgaW5zZXJ0aW9ucygrKSwgMTUgZGVsZXRpb25zKC0pCgpk
aWZmIC0tZ2l0IGEvdGFyZ2V0L2xpbnV4L2dlbmVyaWMvcGVuZGluZy00LjE0LzQwMS1tdGQtYWRk
LXN1cHBvcnQtZm9yLWRpZmZlcmVudC1wYXJ0aXRpb24tcGFyc2VyLXR5cGVzLnBhdGNoIGIvdGFy
Z2V0L2xpbnV4L2dlbmVyaWMvcGVuZGluZy00LjE0LzQwMS1tdGQtYWRkLXN1cHBvcnQtZm9yLWRp
ZmZlcmVudC1wYXJ0aXRpb24tcGFyc2VyLXR5cGVzLnBhdGNoCmluZGV4IGFlMTMxMTJlZjZkMC4u
MDU3ZDQ3MzY4NDQzIDEwMDY0NAotLS0gYS90YXJnZXQvbGludXgvZ2VuZXJpYy9wZW5kaW5nLTQu
MTQvNDAxLW10ZC1hZGQtc3VwcG9ydC1mb3ItZGlmZmVyZW50LXBhcnRpdGlvbi1wYXJzZXItdHlw
ZXMucGF0Y2gKKysrIGIvdGFyZ2V0L2xpbnV4L2dlbmVyaWMvcGVuZGluZy00LjE0LzQwMS1tdGQt
YWRkLXN1cHBvcnQtZm9yLWRpZmZlcmVudC1wYXJ0aXRpb24tcGFyc2VyLXR5cGVzLnBhdGNoCkBA
IC0yMCwzNSArMjAsNDQgQEAgU2lnbmVkLW9mZi1ieTogR2Fib3IgSnVob3MgPGp1aG9zZ0BvcGVu
d3J0Lm9yZz4KICAKICAvKgogICAqIEdpdmVuIGEgcG9pbnRlciB0byB0aGUgTVREIG9iamVjdCBp
biB0aGUgbXRkX3BhcnQgc3RydWN0dXJlLCB3ZSBjYW4gcmV0cmlldmUKLUBAIC03NjIsNiArNzY2
LDI3IEBAIGludCBtdGRfZGVsX3BhcnRpdGlvbihzdHJ1Y3QgbXRkX2luZm8gKm0KK0BAIC03NjIs
NiArNzY2LDM2IEBAIGludCBtdGRfZGVsX3BhcnRpdGlvbihzdHJ1Y3QgbXRkX2luZm8gKm0KICB9
CiAgRVhQT1JUX1NZTUJPTF9HUEwobXRkX2RlbF9wYXJ0aXRpb24pOwogIAogK3N0YXRpYyBpbnQK
ICtydW5fcGFyc2Vyc19ieV90eXBlKHN0cnVjdCBtdGRfcGFydCAqc2xhdmUsIGVudW0gbXRkX3Bh
cnNlcl90eXBlIHR5cGUpCiArewotKwlzdHJ1Y3QgbXRkX3BhcnRpdGlvbnMgcHBhcnRzID0geyB9
OwotKwlpbnQgZXJyOworKwlzdHJ1Y3QgbXRkX3BhcnRpdGlvbiAqcGFydHM7CisrCWludCBucl9w
YXJ0czsKKysJaW50IGk7CiArCi0rCXBwYXJ0cy5ucl9wYXJ0cyA9IHBhcnNlX210ZF9wYXJ0aXRp
b25zX2J5X3R5cGUoJnNsYXZlLT5tdGQsIHR5cGUsCi0rCQkJCQkJICAgICAgICZwcGFydHMucGFy
dHMsIE5VTEwpOwotKwlpZiAocHBhcnRzLm5yX3BhcnRzIDw9IDApCi0rCQlyZXR1cm4gcHBhcnRz
Lm5yX3BhcnRzOworKwlucl9wYXJ0cyA9IHBhcnNlX210ZF9wYXJ0aXRpb25zX2J5X3R5cGUoJnNs
YXZlLT5tdGQsIHR5cGUsIChjb25zdCBzdHJ1Y3QgbXRkX3BhcnRpdGlvbiAqKikmcGFydHMsCisr
CQkJCQkJTlVMTCk7CisrCWlmIChucl9wYXJ0cyA8PSAwKQorKwkJcmV0dXJuIG5yX3BhcnRzOwog
KwotKwlpZiAoV0FSTl9PTighcHBhcnRzLnBhcnRzKSkKKysJaWYgKFdBUk5fT04oIXBhcnRzKSkK
ICsJCXJldHVybiAwOwogKwotKwllcnIgPSBhZGRfbXRkX3BhcnRpdGlvbnMoJnNsYXZlLT5tdGQs
IHBwYXJ0cy5wYXJ0cywgcHBhcnRzLm5yX3BhcnRzKTsKKysJZm9yIChpID0gMDsgaSA8IG5yX3Bh
cnRzOyBpKyspIHsKKysJCS8qIGFkanVzdCBwYXJ0aXRpb24gb2Zmc2V0cyAqLworKwkJcGFydHNb
aV0ub2Zmc2V0ICs9IHNsYXZlLT5vZmZzZXQ7CiArCi0rCWtmcmVlKHBwYXJ0cy5wYXJ0cyk7Cisr
CQltdGRfYWRkX3BhcnRpdGlvbihzbGF2ZS0+cGFyZW50LAorKwkJCQkgIHBhcnRzW2ldLm5hbWUs
CisrCQkJCSAgcGFydHNbaV0ub2Zmc2V0LAorKwkJCQkgIHBhcnRzW2ldLnNpemUpOworKwl9Cisr
CisrCWtmcmVlKHBhcnRzKTsKICsKLSsJcmV0dXJuIGVyciA/IGVyciA6IHBwYXJ0cy5ucl9wYXJ0
czsKKysJcmV0dXJuIG5yX3BhcnRzOwogK30KICsKICAjaWZkZWYgQ09ORklHX01URF9TUExJVF9G
SVJNV0FSRV9OQU1FCiAgI2RlZmluZSBTUExJVF9GSVJNV0FSRV9OQU1FCUNPTkZJR19NVERfU1BM
SVRfRklSTVdBUkVfTkFNRQogICNlbHNlCi1AQCAtMTE0Nyw2ICsxMTcyLDYxIEBAIHZvaWQgbXRk
X3BhcnRfcGFyc2VyX2NsZWFudXAoc3RydWN0IG10ZF8KK0BAIC0xMTQ3LDYgKzExODEsNjEgQEAg
dm9pZCBtdGRfcGFydF9wYXJzZXJfY2xlYW51cChzdHJ1Y3QgbXRkXwogIAl9CiAgfQogIApkaWZm
IC0tZ2l0IGEvdGFyZ2V0L2xpbnV4L2dlbmVyaWMvcGVuZGluZy00LjE0LzQwMi1tdGQtdXNlLXR5
cGVkLW10ZC1wYXJzZXJzLWZvci1yb290ZnMtYW5kLWZpcm13YXJlLXNwbGl0LnBhdGNoIGIvdGFy
Z2V0L2xpbnV4L2dlbmVyaWMvcGVuZGluZy00LjE0LzQwMi1tdGQtdXNlLXR5cGVkLW10ZC1wYXJz
ZXJzLWZvci1yb290ZnMtYW5kLWZpcm13YXJlLXNwbGl0LnBhdGNoCmluZGV4IDE0OWMzMjhhYzRk
NS4uMmNjMDZkZDQ2M2IzIDEwMDY0NAotLS0gYS90YXJnZXQvbGludXgvZ2VuZXJpYy9wZW5kaW5n
LTQuMTQvNDAyLW10ZC11c2UtdHlwZWQtbXRkLXBhcnNlcnMtZm9yLXJvb3Rmcy1hbmQtZmlybXdh
cmUtc3BsaXQucGF0Y2gKKysrIGIvdGFyZ2V0L2xpbnV4L2dlbmVyaWMvcGVuZGluZy00LjE0LzQw
Mi1tdGQtdXNlLXR5cGVkLW10ZC1wYXJzZXJzLWZvci1yb290ZnMtYW5kLWZpcm13YXJlLXNwbGl0
LnBhdGNoCkBAIC0xMCw3ICsxMCw3IEBAIFNpZ25lZC1vZmYtYnk6IEdhYm9yIEp1aG9zIDxqdWhv
c2dAb3BlbndydC5vcmc+CiAKIC0tLSBhL2RyaXZlcnMvbXRkL210ZHBhcnQuYwogKysrIGIvZHJp
dmVycy9tdGQvbXRkcGFydC5jCi1AQCAtNzk1LDYgKzc5NSw3IEBAIHJ1bl9wYXJzZXJzX2J5X3R5
cGUoc3RydWN0IG10ZF9wYXJ0ICpzbGEKK0BAIC04MDQsNiArODA0LDcgQEAgcnVuX3BhcnNlcnNf
YnlfdHlwZShzdHJ1Y3QgbXRkX3BhcnQgKnNsYQogIAogIHN0YXRpYyB2b2lkIHNwbGl0X2Zpcm13
YXJlKHN0cnVjdCBtdGRfaW5mbyAqbWFzdGVyLCBzdHJ1Y3QgbXRkX3BhcnQgKnBhcnQpCiAgewpA
QCAtMTgsNyArMTgsNyBAQCBTaWduZWQtb2ZmLWJ5OiBHYWJvciBKdWhvcyA8anVob3NnQG9wZW53
cnQub3JnPgogIH0KICAKICBzdGF0aWMgdm9pZCBtdGRfcGFydGl0aW9uX3NwbGl0KHN0cnVjdCBt
dGRfaW5mbyAqbWFzdGVyLCBzdHJ1Y3QgbXRkX3BhcnQgKnBhcnQpCi1AQCAtODA0LDYgKzgwNSwx
MiBAQCBzdGF0aWMgdm9pZCBtdGRfcGFydGl0aW9uX3NwbGl0KHN0cnVjdCBtCitAQCAtODEzLDYg
KzgxNCwxMiBAQCBzdGF0aWMgdm9pZCBtdGRfcGFydGl0aW9uX3NwbGl0KHN0cnVjdCBtCiAgCWlm
IChyb290ZnNfZm91bmQpCiAgCQlyZXR1cm47CiAgCmRpZmYgLS1naXQgYS90YXJnZXQvbGludXgv
Z2VuZXJpYy9wZW5kaW5nLTQuMTQvNDA0LW10ZC1hZGQtbW9yZS1oZWxwZXItZnVuY3Rpb25zLnBh
dGNoIGIvdGFyZ2V0L2xpbnV4L2dlbmVyaWMvcGVuZGluZy00LjE0LzQwNC1tdGQtYWRkLW1vcmUt
aGVscGVyLWZ1bmN0aW9ucy5wYXRjaAppbmRleCBkMWEzMjg3MmFmMjEuLjdiNDgxZmZiNDdhNSAx
MDA2NDQKLS0tIGEvdGFyZ2V0L2xpbnV4L2dlbmVyaWMvcGVuZGluZy00LjE0LzQwNC1tdGQtYWRk
LW1vcmUtaGVscGVyLWZ1bmN0aW9ucy5wYXRjaAorKysgYi90YXJnZXQvbGludXgvZ2VuZXJpYy9w
ZW5kaW5nLTQuMTQvNDA0LW10ZC1hZGQtbW9yZS1oZWxwZXItZnVuY3Rpb25zLnBhdGNoCkBAIC0x
MSw3ICsxMSw3IEBAIFNpZ25lZC1vZmYtYnk6IEdhYm9yIEp1aG9zIDxqdWhvc2dAb3BlbndydC5v
cmc+CiAKIC0tLSBhL2RyaXZlcnMvbXRkL210ZHBhcnQuYwogKysrIGIvZHJpdmVycy9tdGQvbXRk
cGFydC5jCi1AQCAtMTI1MSw2ICsxMjUxLDI0IEBAIGludCBtdGRfaXNfcGFydGl0aW9uKGNvbnN0
IHN0cnVjdCBtdGRfaW4KK0BAIC0xMjYwLDYgKzEyNjAsMjQgQEAgaW50IG10ZF9pc19wYXJ0aXRp
b24oY29uc3Qgc3RydWN0IG10ZF9pbgogIH0KICBFWFBPUlRfU1lNQk9MX0dQTChtdGRfaXNfcGFy
dGl0aW9uKTsKICAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3Blbndy
dC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQt
ZGV2ZWwK
