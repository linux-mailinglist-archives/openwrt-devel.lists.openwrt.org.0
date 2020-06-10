Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3282C1F58C2
	for <lists+openwrt-devel@lfdr.de>; Wed, 10 Jun 2020 18:11:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=TifzwJ4d+MWoUsxrOAg/eXnc7N/8bjwrrUK/TOIPq9U=; b=ti3Q3xgvLqFzsu
	9E6+Bof3k0FRaAhnBXV3FogeMi68W1q/KMuGeXbugMSCZaxNEBgOvoqplVh/QAHysh22LGFMVURLz
	gwevtf1R4R7fKd8DAF2mt1wX3r40ozkCKcr920M5t5bhK4LxW18QCybzmSzbiAsNVL7prFf24ggid
	z+oMdU8BU24B/j032tMPh+HE8UdaD+NUsB+yBr2BMUJDOd7ASQrjc2Fa9WqqIVKzpXijExX8effdn
	2yC4gNxDBl/cer+xHQb/z0wMrbPTAR97X4k44G8WCq8n5xkJ/u552jpZJM1wmjTarbKkk9y1ZV+LI
	PeFyCTLAlmLkTDXg6+Xw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jj3Jg-0004x1-JZ; Wed, 10 Jun 2020 16:11:04 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jj3Ja-0004w6-L2
 for openwrt-devel@lists.openwrt.org; Wed, 10 Jun 2020 16:11:00 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id EFB1D3C5D;
 Wed, 10 Jun 2020 18:10:54 +0200 (CEST)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id 7beda870;
 Wed, 10 Jun 2020 18:10:39 +0200 (CEST)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 10 Jun 2020 18:10:40 +0200
Message-Id: <20200610161040.8903-1-ynezz@true.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_091058_992017_50E2625E 
X-CRM114-Status: GOOD (  10.32  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH] mvebu: fix bootloader kernel commandline
 mangling
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
Cc: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Q3VycmVudGx5IEknbSB1bmFibGUgdG8gYm9vdCBpbml0cmFtZnMgaW1hZ2Ugd2l0aCBgY29uc29s
ZT10dHlTMCwxMTUyMDBgCmtlcm5lbCBjb21tYW5kbGluZSBhcyB0aGUgYm9vdGxvYWRlciBtYW5n
bGluZyByZXNldHMga2VybmVsIGNvbW1hbmRsaW5lCmlmIHRoZXJlIGlzIG5vIGByb290PWAgb3B0
aW9uIHByb3ZpZGVkLCBlZmVjdGl2ZWx5IGNsZWFyaW5nIHdoYXRldmVyIEkKcGFzcyB0byB0aGUg
a2VybmVsLCBtYWtpbmcgdGhlIGByb290PWAgb3B0aW9uIG1hbmRhdG9yeS4KClNpZ25lZC1vZmYt
Ynk6IFBldHIgxaB0ZXRpYXIgPHluZXp6QHRydWUuY3o+Ci0tLQogLi4uTWFuZ2xlLWJvb3Rsb2Fk
ZXItcy1rZXJuZWwtYXJndW1lbnRzLnBhdGNoIHwgNjEgKysrKysrKysrKystLS0tLS0tLQogMSBm
aWxlIGNoYW5nZWQsIDM0IGluc2VydGlvbnMoKyksIDI3IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdp
dCBhL3RhcmdldC9saW51eC9tdmVidS9wYXRjaGVzLTUuNC8wMDYtbXZlYnUtTWFuZ2xlLWJvb3Rs
b2FkZXItcy1rZXJuZWwtYXJndW1lbnRzLnBhdGNoIGIvdGFyZ2V0L2xpbnV4L212ZWJ1L3BhdGNo
ZXMtNS40LzAwNi1tdmVidS1NYW5nbGUtYm9vdGxvYWRlci1zLWtlcm5lbC1hcmd1bWVudHMucGF0
Y2gKaW5kZXggMmY5NDJlYTNhZjYzLi41OTY5YTEwYTg2NWMgMTAwNjQ0Ci0tLSBhL3RhcmdldC9s
aW51eC9tdmVidS9wYXRjaGVzLTUuNC8wMDYtbXZlYnUtTWFuZ2xlLWJvb3Rsb2FkZXItcy1rZXJu
ZWwtYXJndW1lbnRzLnBhdGNoCisrKyBiL3RhcmdldC9saW51eC9tdmVidS9wYXRjaGVzLTUuNC8w
MDYtbXZlYnUtTWFuZ2xlLWJvb3Rsb2FkZXItcy1rZXJuZWwtYXJndW1lbnRzLnBhdGNoCkBAIC0y
MSwxMCArMjEsMTAgQEAgd2FzIGZvdW5kLCByZXN1bHRpbmcgaW4gYmxhbmsgY21kbGluZSBhbmQg
ZmFpbHVyZSB0byBib290LgogCiBTaWduZWQtb2ZmLWJ5OiBNaWNoYWVsIEdyYXkgPG1pY2hhZWwu
Z3JheUBsYW50aXNwcm9qZWN0LmNvbT4KIC0tLQotIGFyY2gvYXJtL0tjb25maWcgICAgICAgICAg
ICAgICAgICAgICAgICB8IDExICsrKysrCi0gYXJjaC9hcm0vYm9vdC9jb21wcmVzc2VkL2F0YWdz
X3RvX2ZkdC5jIHwgNzIgKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKystCi0gaW5pdC9t
YWluLmMgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgMTYgKysrKysrKysKLSAzIGZpbGVz
IGNoYW5nZWQsIDk4IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKKyBhcmNoL2FybS9LY29u
ZmlnICAgICAgICAgICAgICAgICAgICAgICAgfCAxMSArKysrCisgYXJjaC9hcm0vYm9vdC9jb21w
cmVzc2VkL2F0YWdzX3RvX2ZkdC5jIHwgODUgKysrKysrKysrKysrKysrKysrKysrKysrLQorIGlu
aXQvbWFpbi5jICAgICAgICAgICAgICAgICAgICAgICAgICAgICB8IDE2ICsrKysrCisgMyBmaWxl
cyBjaGFuZ2VkLCAxMTEgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQogCiAtLS0gYS9hcmNo
L2FybS9LY29uZmlnCiArKysgYi9hcmNoL2FybS9LY29uZmlnCkBAIC01Nyw3ICs1Nyw3IEBAIFNp
Z25lZC1vZmYtYnk6IE1pY2hhZWwgR3JheSA8bWljaGFlbC5ncmF5QGxhbnRpc3Byb2plY3QuY29t
PgogICNlbHNlCiAgI2RlZmluZSBkb19leHRlbmRfY21kbGluZSAwCiAgI2VuZGlmCi1AQCAtNjcs
NiArNjksNjUgQEAgc3RhdGljIHVpbnQzMl90IGdldF9jZWxsX3NpemUoY29uc3Qgdm9pZAorQEAg
LTY3LDYgKzY5LDcyIEBAIHN0YXRpYyB1aW50MzJfdCBnZXRfY2VsbF9zaXplKGNvbnN0IHZvaWQK
ICAJcmV0dXJuIGNlbGxfc2l6ZTsKICB9CiAgCkBAIC03OCw3ICs3OCw4IEBAIFNpZ25lZC1vZmYt
Ynk6IE1pY2hhZWwgR3JheSA8bWljaGFlbC5ncmF5QGxhbnRpc3Byb2plY3QuY29tPgogKwkJZG8g
ewogKwkJCXB0cisrOwogKwkJCXB0ciA9IHN0cmNocihwdHIsICdyJyk7Ci0rCQkJaWYoIXB0cikg
cmV0dXJuIGRlc3Q7CisrCQkJaWYgKCFwdHIpCisrCQkJCWdvdG8gbm9fYXBwZW5kOwogKwogKwkJ
fSB3aGlsZSAocHRyICE9IHN0ciAmJiAqKHB0ci0xKSAhPSAnICcpOwogKwpAQCAtOTcsMjUgKzk4
LDMxIEBAIFNpZ25lZC1vZmYtYnk6IE1pY2hhZWwgR3JheSA8bWljaGFlbC5ncmF5QGxhbnRpc3By
b2plY3QuY29tPgogKwogKwkvKiBpZiBhcHBlbmQtcm9vdGJsb2NrIHByb3BlcnR5IGlzIHNldCB1
c2UgaXQgdG8gYXBwZW5kIHRvIGNvbW1hbmQgbGluZSAqLwogKwlyb290YmxvY2sgPSBnZXRwcm9w
KGZkdCwgIi9jaG9zZW4iLCAiYXBwZW5kLXJvb3RibG9jayIsICZsKTsKLSsJaWYocm9vdGJsb2Nr
ICE9IE5VTEwpIHsKLSsJCWlmKCpkZXN0ICE9ICcgJykgewotKwkJCSpkZXN0ID0gJyAnOwotKwkJ
CWRlc3QrKzsKLSsJCQlsZW4rKzsKLSsJCX0KLSsJCWlmIChsZW4gKyBsICsgaSA8PSBDT01NQU5E
X0xJTkVfU0laRSkgewotKwkJCW1lbWNweShkZXN0LCByb290YmxvY2ssIGwpOwotKwkJCWRlc3Qg
Kz0gbCAtIDE7Ci0rCQkJbWVtY3B5KGRlc3QsIHB0ciwgaSk7Ci0rCQkJZGVzdCArPSBpOwotKwkJ
fQotKwl9IGVsc2UgewotKwkJbGVuID0gc3RybGVuKHN0cik7Ci0rCQlpZiAobGVuICsgMSA8IENP
TU1BTkRfTElORV9TSVpFKSB7Ci0rCQkJbWVtY3B5KGRlc3QsIHN0ciwgbGVuKTsKLSsJCQlkZXN0
ICs9IGxlbjsKLSsJCX0KKysJaWYgKHJvb3RibG9jayA9PSBOVUxMKQorKwkJZ290byBub19hcHBl
bmQ7CisrCisrCWlmICgqZGVzdCAhPSAnICcpIHsKKysJCSpkZXN0ID0gJyAnOworKwkJZGVzdCsr
OworKwkJbGVuKys7CisrCX0KKysKKysJaWYgKGxlbiArIGwgKyBpIDw9IENPTU1BTkRfTElORV9T
SVpFKSB7CisrCQltZW1jcHkoZGVzdCwgcm9vdGJsb2NrLCBsKTsKKysJCWRlc3QgKz0gbCAtIDE7
CisrCQltZW1jcHkoZGVzdCwgcHRyLCBpKTsKKysJCWRlc3QgKz0gaTsKICsJfQorKworKwlyZXR1
cm4gZGVzdDsKKysKKytub19hcHBlbmQ6CisrCWxlbiA9IHN0cmxlbihzdHIpOworKwlpZiAobGVu
ICsgMSA8IENPTU1BTkRfTElORV9TSVpFKSB7CisrCQltZW1jcHkoZGVzdCwgc3RyLCBsZW4pOwor
KwkJZGVzdCArPSBsZW47CisrCX0KKysKICsJcmV0dXJuIGRlc3Q7CiArfQogKyNlbmRpZgpAQCAt
MTIzLDcgKzEzMCw3IEBAIFNpZ25lZC1vZmYtYnk6IE1pY2hhZWwgR3JheSA8bWljaGFlbC5ncmF5
QGxhbnRpc3Byb2plY3QuY29tPgogIHN0YXRpYyB2b2lkIG1lcmdlX2ZkdF9ib290YXJncyh2b2lk
ICpmZHQsIGNvbnN0IGNoYXIgKmZkdF9jbWRsaW5lKQogIHsKICAJY2hhciBjbWRsaW5lW0NPTU1B
TkRfTElORV9TSVpFXTsKLUBAIC04NiwxMiArMTQ3LDIxIEBAIHN0YXRpYyB2b2lkIG1lcmdlX2Zk
dF9ib290YXJncyh2b2lkICpmZHQKK0BAIC04NiwxMiArMTU0LDIxIEBAIHN0YXRpYyB2b2lkIG1l
cmdlX2ZkdF9ib290YXJncyh2b2lkICpmZHQKICAKICAJLyogYW5kIGFwcGVuZCB0aGUgQVRBR19D
TURMSU5FICovCiAgCWlmIChmZHRfY21kbGluZSkgewpAQCAtMTQ1LDcgKzE1Miw3IEBAIFNpZ25l
ZC1vZmYtYnk6IE1pY2hhZWwgR3JheSA8bWljaGFlbC5ncmF5QGxhbnRpc3Byb2plY3QuY29tPgog
IAl9CiAgCSpwdHIgPSAnXDAnOwogIAotQEAgLTE2Niw3ICsyMzYsOSBAQCBpbnQgYXRhZ3NfdG9f
ZmR0KHZvaWQgKmF0YWdfbGlzdCwgdm9pZCAqCitAQCAtMTY2LDcgKzI0Myw5IEBAIGludCBhdGFn
c190b19mZHQodm9pZCAqYXRhZ19saXN0LCB2b2lkICoKICAJCQllbHNlCiAgCQkJCXNldHByb3Bf
c3RyaW5nKGZkdCwgIi9jaG9zZW4iLCAiYm9vdGFyZ3MiLAogIAkJCQkJICAgICAgIGF0YWctPnUu
Y21kbGluZS5jbWRsaW5lKTsKQEAgLTE1Niw3ICsxNjMsNyBAQCBTaWduZWQtb2ZmLWJ5OiBNaWNo
YWVsIEdyYXkgPG1pY2hhZWwuZ3JheUBsYW50aXNwcm9qZWN0LmNvbT4KICAJCQlpZiAobWVtY291
bnQgPj0gc2l6ZW9mKG1lbV9yZWdfcHJvcGVydHkpLzQpCiAgCQkJCWNvbnRpbnVlOwogIAkJCWlm
ICghYXRhZy0+dS5tZW0uc2l6ZSkKLUBAIC0yMTAsNiArMjgyLDEwIEBAIGludCBhdGFnc190b19m
ZHQodm9pZCAqYXRhZ19saXN0LCB2b2lkICoKK0BAIC0yMTAsNiArMjg5LDEwIEBAIGludCBhdGFn
c190b19mZHQodm9pZCAqYXRhZ19saXN0LCB2b2lkICoKICAJCXNldHByb3AoZmR0LCAiL21lbW9y
eSIsICJyZWciLCBtZW1fcmVnX3Byb3BlcnR5LAogIAkJCTQgKiBtZW1jb3VudCAqIG1lbXNpemUp
OwogIAl9CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpv
cGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3Jn
Cmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVs
Cg==
