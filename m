Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EB5010395A
	for <lists+openwrt-devel@lfdr.de>; Wed, 20 Nov 2019 13:00:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3YAY1ZsM3m7tdkuAeIyTWcpNF/e0gL8jVOZFEHzpjcU=; b=WDAjj/QtvRObt9
	jdMEEEIx3Wxa5Jv3fduwdvtiMpyxW+uOX5AV0MN+lzOaeKJiMD/d41BRFcHAvVMhY44NJcS/5wXwg
	rk8HHP2N+t1LT03fIzKHaRidS/w6EyB3CY0ASM1j3dQ5ceHSzGUk+7Y5j4eXrxl/K9S0UAm+QyNH5
	aXRIPALKhoJMMoNgr4NTFM+txlVwVjXqW5kkL6izfyjuwvO/4UQGpXt3cpvVhA0paidJeww0pdALc
	ofm1rMB56+xhL7cSRVlyIYqK1/KVYE9acPIGvukSVWsUso97zVvy/wUe8kLzBU6ZFAcKSJkJPvhhL
	HRg6elUitAxa+GJULfCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXOf8-0003zJ-CM; Wed, 20 Nov 2019 12:00:46 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXOe5-0001Zc-2r
 for openwrt-devel@lists.openwrt.org; Wed, 20 Nov 2019 11:59:42 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 45DAA466D;
 Wed, 20 Nov 2019 12:59:32 +0100 (CET)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id c91570d9;
 Wed, 20 Nov 2019 12:59:22 +0100 (CET)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 20 Nov 2019 12:59:22 +0100
Message-Id: <20191120115926.23272-6-ynezz@true.cz>
In-Reply-To: <20191120115926.23272-1-ynezz@true.cz>
References: <20191120115926.23272-1-ynezz@true.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_035941_302725_D156B436 
X-CRM114-Status: UNSURE (   7.57  )
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
Subject: [OpenWrt-Devel] [PATCH libubox 5/9] base64: b64_decode: fix
 possible null pointer dereference
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

Y2xhbmctMTAgYW5hbHl6ZXIgcmVwb3J0cyBmb2xsb3dpbmc6CgogYmFzZTY0LmM6MzI1OjIwOiB3
YXJuaW5nOiBBcnJheSBhY2Nlc3MgKGZyb20gdmFyaWFibGUgJ3RhcmdldCcpIHJlc3VsdHMgaW4g
YSBudWxsIHBvaW50ZXIgZGVyZWZlcmVuY2UKICAgICAgICAgICAgICAgICB0YXJnZXRbdGFyaW5k
ZXhdID0gMDsKICAgICAgICAgICAgICAgICB+fn5+fn4gICAgICAgICAgIF4KCmFuZCBwcmVwYXJl
ZCB0ZXN0IGNhc2UgY29uZmlybXMgaXQ6CgogSW52YWxpZCB3cml0ZSBvZiBzaXplIDEKICAgIGF0
IDB4NEU0NDYzRjogYjY0X2RlY29kZSAoYmFzZTY0LmM6MzI1KQogICAgYnkgMHg0MDA4OEM6IHRl
c3RfaW52YWxpZF9pbnB1dHMgKHRlc3RzL3Rlc3QtYmFzZTY0LmM6MjYpCiAgICBieSAweDQwMDg4
QzogbWFpbiAodGVzdHMvdGVzdC1iYXNlNjQuYzozMikKICBBZGRyZXNzIDB4MSBpcyBub3Qgc3Rh
Y2snZCwgbWFsbG9jJ2Qgb3IgKHJlY2VudGx5KSBmcmVlJ2QKCiBQcm9jZXNzIHRlcm1pbmF0aW5n
IHdpdGggZGVmYXVsdCBhY3Rpb24gb2Ygc2lnbmFsIDExIChTSUdTRUdWKQogIEFjY2VzcyBub3Qg
d2l0aGluIG1hcHBlZCByZWdpb24gYXQgYWRkcmVzcyAweDEKICAgIGF0IDB4NEU0NDYzRjogYjY0
X2RlY29kZSAoYmFzZTY0LmM6MzI1KQogICAgYnkgMHg0MDA4OEM6IHRlc3RfaW52YWxpZF9pbnB1
dHMgKHRlc3RzL3Rlc3QtYmFzZTY0LmM6MjYpCiAgICBieSAweDQwMDg4QzogbWFpbiAodGVzdHMv
dGVzdC1iYXNlNjQuYzozMikKClNpZ25lZC1vZmYtYnk6IFBldHIgxaB0ZXRpYXIgPHluZXp6QHRy
dWUuY3o+Ci0tLQogYmFzZTY0LmMgICAgICAgICAgICB8ICA2ICsrKysrKwogdGVzdHMvdGVzdC1i
YXNlNjQuYyB8IDE1ICsrKysrKysrKysrKysrKwogMiBmaWxlcyBjaGFuZ2VkLCAyMSBpbnNlcnRp
b25zKCspCgpkaWZmIC0tZ2l0IGEvYmFzZTY0LmMgYi9iYXNlNjQuYwppbmRleCA0NzU5ZWRlMDFl
N2MuLmQ5ZjQxMTIxNzlmMyAxMDA2NDQKLS0tIGEvYmFzZTY0LmMKKysrIGIvYmFzZTY0LmMKQEAg
LTE0NCw2ICsxNDQsOSBAQCBpbnQgYjY0X2VuY29kZShjb25zdCB2b2lkICpfc3JjLCBzaXplX3Qg
c3JjbGVuZ3RoLAogCXVfY2hhciBvdXRwdXRbNF07CiAJc2l6ZV90IGk7CiAKKwlpZiAoIWRlc3Qg
fHwgdGFyZ3NpemUgPT0gMCkKKwkJcmV0dXJuIC0xOworCiAJd2hpbGUgKDIgPCBzcmNsZW5ndGgp
IHsKIAkJaW5wdXRbMF0gPSAqc3JjKys7CiAJCWlucHV0WzFdID0gKnNyYysrOwpAQCAtMjA4LDYg
KzIxMSw5IEBAIGludCBiNjRfZGVjb2RlKGNvbnN0IHZvaWQgKl9zcmMsIHZvaWQgKmRlc3QsIHNp
emVfdCB0YXJnc2l6ZSkKIAlzdGF0ZSA9IDA7CiAJdGFyaW5kZXggPSAwOwogCisJaWYgKCFkZXN0
IHx8IHRhcmdzaXplID09IDApCisJCXJldHVybiAtMTsKKwogCXdoaWxlICgoY2ggPSAodW5zaWdu
ZWQgY2hhcikqc3JjKyspICE9ICdcMCcpIHsKIAkJaWYgKGlzc3BhY2UoY2gpKQkvKiBTa2lwIHdo
aXRlc3BhY2UgYW55d2hlcmUuICovCiAJCQljb250aW51ZTsKZGlmZiAtLWdpdCBhL3Rlc3RzL3Rl
c3QtYmFzZTY0LmMgYi90ZXN0cy90ZXN0LWJhc2U2NC5jCmluZGV4IGMyOWI0ZTJjNzNhMy4uNDE1
ZmM1OTY5YzUzIDEwMDY0NAotLS0gYS90ZXN0cy90ZXN0LWJhc2U2NC5jCisrKyBiL3Rlc3RzL3Rl
c3QtYmFzZTY0LmMKQEAgLTE3LDggKzE3LDIzIEBAIHN0YXRpYyB2b2lkIHRlc3RfYjY0X2RlY29k
ZShjb25zdCBjaGFyICpzcmMpCiAJZnByaW50ZihzdGRvdXQsICIlZCAlc1xuIiwgciwgZHN0KTsK
IH0KIAorc3RhdGljIHZvaWQgdGVzdF9pbnZhbGlkX2lucHV0cygpCit7CisJYjY0X2RlY29kZShO
VUxMLCBOVUxMLCAwKTsKKwliNjRfZGVjb2RlKCJaZz09IiwgTlVMTCwgMCk7CisJYjY0X2RlY29k
ZSgiWmc9PSIsIE5VTEwsIDIpOworCisJYjY0X2VuY29kZShOVUxMLCAwLCBOVUxMLCAyKTsKKwli
NjRfZW5jb2RlKE5VTEwsIDIsIE5VTEwsIDIpOworCWI2NF9lbmNvZGUoImZvbyIsIDMsIE5VTEws
IDIpOworCWI2NF9lbmNvZGUoImZvbyIsIDMsIE5VTEwsIDApOworfQorCiBpbnQgbWFpbigpCiB7
CisKKwl0ZXN0X2ludmFsaWRfaW5wdXRzKCk7CisKIAl0ZXN0X2I2NF9lbmNvZGUoIiIpOwogCXRl
c3RfYjY0X2VuY29kZSgiZiIpOwogCXRlc3RfYjY0X2VuY29kZSgiZm8iKTsKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGlu
ZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVu
d3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
