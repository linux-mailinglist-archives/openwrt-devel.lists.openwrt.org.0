Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 95850EF21F
	for <lists+openwrt-devel@lfdr.de>; Tue,  5 Nov 2019 01:40:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Jd/FZm/IXcJdYN5kmHtmPAsmOlHy2Ij9EGuLkAt4dZs=; b=Bph7zGiUJFI+zw
	w6FD+LL8YxxZIC862DpW5E1T1exz4+J6qWwVqek0bO2li42Tc4CjzvdHNHvFkn7chnkAhj/iitadM
	Cs6K+LOqt65OpBxQheKLYsG1Q7z2mA7KJMdp/FWJdi2rIpF5LYrmF8YBiEFiVS1ORCe4H9RjI0sga
	dpIlpOF8+F8wYIm7PWPIle0lA1s6TtrYQjfYtbtxkUkA1FW0YYL56L7uvKBkJs1TLpFC8rwqc0c0k
	YidbERRN8y7nG4vSlJUhnlYQTZjD692VK4+VAhqVmDjvGPesu3d1aROIjQUoJS1upFvTSg2uV8GX7
	loFOL6QNrNlOFlBgQMhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRmtJ-0003Ai-UO; Tue, 05 Nov 2019 00:40:13 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRmqQ-000896-UL
 for openwrt-devel@lists.openwrt.org; Tue, 05 Nov 2019 00:37:17 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 04B474D89;
 Tue,  5 Nov 2019 01:37:12 +0100 (CET)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id eee40c82;
 Tue, 5 Nov 2019 01:37:02 +0100 (CET)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Tue,  5 Nov 2019 01:36:52 +0100
Message-Id: <20191105003657.16540-14-ynezz@true.cz>
In-Reply-To: <20191105003657.16540-1-ynezz@true.cz>
References: <20191105003657.16540-1-ynezz@true.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_163715_173696_E8DA88BB 
X-CRM114-Status: GOOD (  13.02  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH uci 13/18] lua: fix memory leak in changes
 method
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

Q29uZmlncyByZXR1cm5lZCBieSB1Y2lfbGlzdF9jb25maWdzIGNhbGwgYXJlIG5vdCBmcmVlZCB3
aGVuIG5vdCBuZWVkZWQsCmxlYWRpbmcgdG8gdGhlIG1lbW9yeSBsZWFrLiBXaGlsZSBhdCBpdCBt
YWtlIHRoZSBjb2RlIGNsZWFuZXIuCgpTaWduZWQtb2ZmLWJ5OiBQZXRyIMWgdGV0aWFyIDx5bmV6
ekB0cnVlLmN6PgotLS0KIGx1YS91Y2kuYyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgfCAxNSArKysrKysrKy0tLS0tLS0KIHRlc3RzL2NyYW0vbHVhL3Rlc3RfY2FzZXMv
Y2hhbmdlc19kb2VzbnRfbGVhay5sdWEgfCAxMSArKysrKysrKysrKwogdGVzdHMvY3JhbS90ZXN0
X3VjaWx1YV90ZXN0Y2FzZXMudCAgICAgICAgICAgICAgICB8IDEwICsrKysrKysrKysKIDMgZmls
ZXMgY2hhbmdlZCwgMjkgaW5zZXJ0aW9ucygrKSwgNyBkZWxldGlvbnMoLSkKIGNyZWF0ZSBtb2Rl
IDEwMDY0NCB0ZXN0cy9jcmFtL2x1YS90ZXN0X2Nhc2VzL2NoYW5nZXNfZG9lc250X2xlYWsubHVh
CiBjcmVhdGUgbW9kZSAxMDA2NDQgdGVzdHMvY3JhbS90ZXN0X3VjaWx1YV90ZXN0Y2FzZXMudAoK
ZGlmZiAtLWdpdCBhL2x1YS91Y2kuYyBiL2x1YS91Y2kuYwppbmRleCAzMjNmODFhNjhjMTcuLjQy
ZmU0Yjc4NTkwMSAxMDA2NDQKLS0tIGEvbHVhL3VjaS5jCisrKyBiL2x1YS91Y2kuYwpAQCAtODgw
LDE2ICs4ODAsMTcgQEAgdWNpX2x1YV9jaGFuZ2VzKGx1YV9TdGF0ZSAqTCkKIAlsdWFfbmV3dGFi
bGUoTCk7CiAJaWYgKHBhY2thZ2UpIHsKIAkJdWNpX2x1YV9jaGFuZ2VzX3BrZyhMLCBjdHgsIHBh
Y2thZ2UpOwotCX0gZWxzZSB7Ci0JCWlmICh1Y2lfbGlzdF9jb25maWdzKGN0eCwgJmNvbmZpZykg
IT0gMCkKLQkJCWdvdG8gZG9uZTsKKwkJcmV0dXJuIDE7CisJfQogCi0JCWZvcihpID0gMDsgY29u
ZmlnW2ldICE9IE5VTEw7IGkrKykgewotCQkJdWNpX2x1YV9jaGFuZ2VzX3BrZyhMLCBjdHgsIGNv
bmZpZ1tpXSk7Ci0JCX0KKwlpZiAoKHVjaV9saXN0X2NvbmZpZ3MoY3R4LCAmY29uZmlnKSAhPSBV
Q0lfT0spIHx8ICFjb25maWcpCisJCXJldHVybiAxOworCisJZm9yIChpID0gMDsgY29uZmlnW2ld
ICE9IE5VTEw7IGkrKykgeworCQl1Y2lfbHVhX2NoYW5nZXNfcGtnKEwsIGN0eCwgY29uZmlnW2ld
KTsKIAl9CiAKLWRvbmU6CisJZnJlZShjb25maWcpOwogCXJldHVybiAxOwogfQogCmRpZmYgLS1n
aXQgYS90ZXN0cy9jcmFtL2x1YS90ZXN0X2Nhc2VzL2NoYW5nZXNfZG9lc250X2xlYWsubHVhIGIv
dGVzdHMvY3JhbS9sdWEvdGVzdF9jYXNlcy9jaGFuZ2VzX2RvZXNudF9sZWFrLmx1YQpuZXcgZmls
ZSBtb2RlIDEwMDY0NAppbmRleCAwMDAwMDAwMDAwMDAuLjY4ZjBlZDA1YmMyYQotLS0gL2Rldi9u
dWxsCisrKyBiL3Rlc3RzL2NyYW0vbHVhL3Rlc3RfY2FzZXMvY2hhbmdlc19kb2VzbnRfbGVhay5s
dWEKQEAgLTAsMCArMSwxMSBAQAorbG9jYWwgQSA9IGFzc2VydAorbG9jYWwgYyA9IHVjaS5jdXJz
b3Iob3MuZ2V0ZW52KCJDT05GSUdfRElSIikpCisKK0EoYzpzZXQoIm5ldHdvcmsiLCAibGFuIiwg
ImRucyIsIHsKKwkibnMxLmtpbmcuYmFuaWsuY3oiLAorCSJuczIub3BlbndydC5vcmciLAorfSkp
CisKK2xvY2FsIGNoYW5nZXMgPSBjOmNoYW5nZXMoKQorQShjaGFuZ2VzLm5ldHdvcmsubGFuLmRu
c1sxXSA9PSAibnMxLmtpbmcuYmFuaWsuY3oiKQorQShjaGFuZ2VzLm5ldHdvcmsubGFuLmRuc1sy
XSA9PSAibnMyLm9wZW53cnQub3JnIikKZGlmZiAtLWdpdCBhL3Rlc3RzL2NyYW0vdGVzdF91Y2ls
dWFfdGVzdGNhc2VzLnQgYi90ZXN0cy9jcmFtL3Rlc3RfdWNpbHVhX3Rlc3RjYXNlcy50Cm5ldyBm
aWxlIG1vZGUgMTAwNjQ0CmluZGV4IDAwMDAwMDAwMDAwMC4uMjc5ZGZjZTk0MjJhCi0tLSAvZGV2
L251bGwKKysrIGIvdGVzdHMvY3JhbS90ZXN0X3VjaWx1YV90ZXN0Y2FzZXMudApAQCAtMCwwICsx
LDEwIEBACitzZXQgTFVBX0NQQVRIIGFuZCB1Y2lsdWEgZm9yIGNvbnZlbmllbmNlOgorCisgICQg
WyAtbiAiJFVDSV9MVUEiIF0gJiYgZXhwb3J0IExVQV9DUEFUSD0iJChkaXJuYW1lICIkVUNJX0xV
QSIpLz8uc28iCisgICQgYWxpYXMgdWNpbHVhPSJ2YWxncmluZCAtLXF1aWV0IC0tbGVhay1jaGVj
az1mdWxsIGx1YSAtbHVjaSIKKworY2hlY2sgdGhhdCBjaGFuZ2VzIG1ldGhvZCBkb2VzbnQgbGVh
ayBtZW1vcnk6CisKKyAgJCBjcCAtUiAiJFRFU1RESVIvY29uZmlnIiAuCisgICQgZXhwb3J0IENP
TkZJR19ESVI9JChwd2QpL2NvbmZpZworICAkIHVjaWx1YSAkVEVTVERJUi9sdWEvdGVzdF9jYXNl
cy9jaGFuZ2VzX2RvZXNudF9sZWFrLmx1YQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZl
bEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlz
dGluZm8vb3BlbndydC1kZXZlbAo=
