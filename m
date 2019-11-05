Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D85DEF21C
	for <lists+openwrt-devel@lfdr.de>; Tue,  5 Nov 2019 01:39:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VAeg0R9t1Vy5ysTef1n5nGjVf06mgjy4WGpUb0BJXHE=; b=tg4ghLwEBB5wEB
	cl2yWpb1e3w3BK1fXzigEWbD//Ugj8chBqKcrQgjU1yktmrpeJ5gs7bxytFGQvy5hBa67qgRXAmKH
	uSlcL7TOOosWj+vEdL7XNJbW1bkuEP1x5Xf99kOWesq7uyePKh1Bc5BlHarpsZQ7PDIrW1+l/Ayzv
	ZOZwW6Hzghc+pqx2sOkid3YupYFcAXn59JNQppl4Tr/xP6HaRKSsfYULR8+cgSq5lsuNBO6rj4WHj
	R1F1sEhDzW83w9Fmp7gLo97wtwmyPaY1FtJeuC0879xiXJEJq34rbouYlwKUBfiLbJMqBzk0hpWMo
	FshodBK9t430wRxWznzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRmsr-0002fM-QC; Tue, 05 Nov 2019 00:39:45 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRmqQ-00089O-QV
 for openwrt-devel@lists.openwrt.org; Tue, 05 Nov 2019 00:37:16 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 5409B4D8A;
 Tue,  5 Nov 2019 01:37:13 +0100 (CET)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id 46d8a934;
 Tue, 5 Nov 2019 01:37:03 +0100 (CET)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Tue,  5 Nov 2019 01:36:53 +0100
Message-Id: <20191105003657.16540-15-ynezz@true.cz>
In-Reply-To: <20191105003657.16540-1-ynezz@true.cz>
References: <20191105003657.16540-1-ynezz@true.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_163715_030462_291EE7F5 
X-CRM114-Status: UNSURE (   9.24  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH uci 14/18] lua: fix memory leak in set method
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

c2Nhbi1idWlsZCBmcm9tIGNsYW5nIHZlcnNpb24gOSBoYXMgcmVwb3J0ZWQgZm9sbG93aW5nIGlz
c3VlOgoKIHVjaS5jOjYyNDoxMjogd2FybmluZzogUG90ZW50aWFsIGxlYWsgb2YgbWVtb3J5IHBv
aW50ZWQgdG8gYnkgJ3MnCiAgICAgICByZXR1cm4gbHVhTF9lcnJvcihMLCAiQ2Fubm90IHNldCBh
biB1Y2kgb3B0aW9uIHRvIGFuIGVtcHR5IHRhYmxlIHZhbHVlIik7CiAgICAgICAgICAgICAgXn5+
fn5+fn5+fgoKdmFsZ3JpbmQgY29uZmlybWVkIGl0IG9uIHRoZSBzdXBwbGllZCB0ZXN0IGNhc2U6
CgogPT0zMTAxMz09IDggYnl0ZXMgaW4gMSBibG9ja3MgYXJlIGRlZmluaXRlbHkgbG9zdCBpbiBs
b3NzIHJlY29yZCAxIG9mIDEKID09MzEwMTM9PSAgICBieSAweDU2QzQ5Qjk6IHN0cmR1cCAoc3Ry
ZHVwLmM6NDIpCgpTaWduZWQtb2ZmLWJ5OiBQZXRyIMWgdGV0aWFyIDx5bmV6ekB0cnVlLmN6Pgot
LS0KIGx1YS91Y2kuYyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgfCA1ICsrKystCiAuLi4vbHVhL3Rlc3RfY2FzZXMvc2V0X3dpdGhfZW1wdHlfdGFibGVf
ZG9lc250X2xlYWsubHVhICAgIHwgMiArKwogdGVzdHMvY3JhbS90ZXN0X3VjaWx1YV90ZXN0Y2Fz
ZXMudCAgICAgICAgICAgICAgICAgICAgICAgICB8IDcgKysrKysrKwogMyBmaWxlcyBjaGFuZ2Vk
LCAxMyBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCiBjcmVhdGUgbW9kZSAxMDA2NDQgdGVz
dHMvY3JhbS9sdWEvdGVzdF9jYXNlcy9zZXRfd2l0aF9lbXB0eV90YWJsZV9kb2VzbnRfbGVhay5s
dWEKCmRpZmYgLS1naXQgYS9sdWEvdWNpLmMgYi9sdWEvdWNpLmMKaW5kZXggNDJmZTRiNzg1OTAx
Li5hN2FhYWQzNzVjMjAgMTAwNjQ0Ci0tLSBhL2x1YS91Y2kuYworKysgYi9sdWEvdWNpLmMKQEAg
LTYyMCw4ICs2MjAsMTEgQEAgdWNpX2x1YV9zZXQobHVhX1N0YXRlICpMKQogCWNhc2UgNDoKIAkJ
LyogRm9ybWF0OiB1Y2kuc2V0KCJwIiwgInMiLCAibyIsICJ2IikgKi8KIAkJaWYgKGx1YV9pc3Rh
YmxlKEwsIG5hcmdzKSkgewotCQkJaWYgKGx1YV9yYXdsZW4oTCwgbmFyZ3MpIDwgMSkKKwkJCWlm
IChsdWFfcmF3bGVuKEwsIG5hcmdzKSA8IDEpIHsKKwkJCQlpZiAocykKKwkJCQkJZnJlZShzKTsK
IAkJCQlyZXR1cm4gbHVhTF9lcnJvcihMLCAiQ2Fubm90IHNldCBhbiB1Y2kgb3B0aW9uIHRvIGFu
IGVtcHR5IHRhYmxlIHZhbHVlIik7CisJCQl9CiAJCQlsdWFfcmF3Z2V0aShMLCBuYXJncywgMSk7
CiAJCQlwdHIudmFsdWUgPSBsdWFMX2NoZWNrc3RyaW5nKEwsIC0xKTsKIAkJCWx1YV9wb3AoTCwg
MSk7CmRpZmYgLS1naXQgYS90ZXN0cy9jcmFtL2x1YS90ZXN0X2Nhc2VzL3NldF93aXRoX2VtcHR5
X3RhYmxlX2RvZXNudF9sZWFrLmx1YSBiL3Rlc3RzL2NyYW0vbHVhL3Rlc3RfY2FzZXMvc2V0X3dp
dGhfZW1wdHlfdGFibGVfZG9lc250X2xlYWsubHVhCm5ldyBmaWxlIG1vZGUgMTAwNjQ0CmluZGV4
IDAwMDAwMDAwMDAwMC4uODNlOTFkM2FiMjY0Ci0tLSAvZGV2L251bGwKKysrIGIvdGVzdHMvY3Jh
bS9sdWEvdGVzdF9jYXNlcy9zZXRfd2l0aF9lbXB0eV90YWJsZV9kb2VzbnRfbGVhay5sdWEKQEAg
LTAsMCArMSwyIEBACitsb2NhbCBjID0gdWNpLmN1cnNvcihvcy5nZXRlbnYoIkNPTkZJR19ESVIi
KSkKK3ByaW50KHBjYWxsKGMuc2V0LCBjLCAibmV0d29yayIsICJsYW4iLCAiZG5zIiwge30pKQpk
aWZmIC0tZ2l0IGEvdGVzdHMvY3JhbS90ZXN0X3VjaWx1YV90ZXN0Y2FzZXMudCBiL3Rlc3RzL2Ny
YW0vdGVzdF91Y2lsdWFfdGVzdGNhc2VzLnQKaW5kZXggMjc5ZGZjZTk0MjJhLi42YTAyMTZiM2Rl
ZDggMTAwNjQ0Ci0tLSBhL3Rlc3RzL2NyYW0vdGVzdF91Y2lsdWFfdGVzdGNhc2VzLnQKKysrIGIv
dGVzdHMvY3JhbS90ZXN0X3VjaWx1YV90ZXN0Y2FzZXMudApAQCAtOCwzICs4LDEwIEBAIGNoZWNr
IHRoYXQgY2hhbmdlcyBtZXRob2QgZG9lc250IGxlYWsgbWVtb3J5OgogICAkIGNwIC1SICIkVEVT
VERJUi9jb25maWciIC4KICAgJCBleHBvcnQgQ09ORklHX0RJUj0kKHB3ZCkvY29uZmlnCiAgICQg
dWNpbHVhICRURVNURElSL2x1YS90ZXN0X2Nhc2VzL2NoYW5nZXNfZG9lc250X2xlYWsubHVhCisK
K2NoZWNrIHRoYXQgc2V0IG1ldGhvZCB3aXRoIGVtcHR5IHRhYmxlIHZhbHVlIGRvZXNuJ3QgbGVh
ayBtZW1vcnk6CisKKyAgJCBjcCAtUiAiJFRFU1RESVIvY29uZmlnIiAuCisgICQgZXhwb3J0IENP
TkZJR19ESVI9JChwd2QpL2NvbmZpZworICAkIHVjaWx1YSAkVEVTVERJUi9sdWEvdGVzdF9jYXNl
cy9zZXRfd2l0aF9lbXB0eV90YWJsZV9kb2VzbnRfbGVhay5sdWEKKyAgZmFsc2VcdENhbm5vdCBz
ZXQgYW4gdWNpIG9wdGlvbiB0byBhbiBlbXB0eSB0YWJsZSB2YWx1ZSAoZXNjKQoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWls
aW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9w
ZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
