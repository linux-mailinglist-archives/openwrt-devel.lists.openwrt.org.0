Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B542127072
	for <lists+openwrt-devel@lfdr.de>; Thu, 19 Dec 2019 23:13:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Yyem5Vvwn12fxJzu8jIBq2Gu6Ti7kDYSslC5oqr35Aw=; b=I/gvdI3xhFnKdq
	te9UV4UoAgmYOJkIs0KRPcSxpnwHP3Qa05JUR3mv8hP2oTlU+A+SCmIL0YqdfL3Kmp1L7qi/IYrPO
	KuHwvpkycelir+PFFD5nbh1lk7ifbMNldqsTsj2rJG6xuqw7duLIqxPtmhcgRinMrIEGp0zDeqqbo
	DxM5XMoAJSX8Z85Vxj37xdPX3cG+lLfw+9W8qNd6aVH6DoritJJMC95FPekVAhbeLvQMQiAUurwlz
	3KFGNw0dZ2N6enkE4u5HzI242RjB1aroAXAiB1ko5RhnMyyYBgF5/F4bnUlvEPlmM9tuRAxvaWYYg
	IGuWaGNft7E6Wm7UImEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ii42s-0007Rv-AC; Thu, 19 Dec 2019 22:13:22 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ii41J-000545-WA
 for openwrt-devel@lists.openwrt.org; Thu, 19 Dec 2019 22:11:48 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 0DEE04BC6;
 Thu, 19 Dec 2019 23:11:44 +0100 (CET)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id 6d5759fe;
 Thu, 19 Dec 2019 23:11:34 +0100 (CET)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Thu, 19 Dec 2019 23:11:16 +0100
Message-Id: <20191219221125.22646-8-ynezz@true.cz>
In-Reply-To: <20191219221125.22646-1-ynezz@true.cz>
References: <20191219221125.22646-1-ynezz@true.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_141146_208439_B45FF003 
X-CRM114-Status: UNSURE (   5.38  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH ubus 07/16] examples: remove dead increments
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

Rml4ZXMgZm9sbG93aW5nIGVycm9yIHJlcG9ydGVkIGJ5IGNsYW5nLTkgYW5hbHl6ZXI6CgogZXhh
bXBsZXMvc2VydmVyLmM6MjQ0OjI6IHdhcm5pbmc6IFZhbHVlIHN0b3JlZCB0byAnYXJnYycgaXMg
bmV2ZXIgcmVhZAogICAgICAgIGFyZ2MgLT0gb3B0aW5kOwogICAgICAgIF4gICAgICAgfn5+fn5+
CgogZXhhbXBsZXMvc2VydmVyLmM6MjQ1OjI6IHdhcm5pbmc6IFZhbHVlIHN0b3JlZCB0byAnYXJn
dicgaXMgbmV2ZXIgcmVhZAogICAgICAgIGFyZ3YgKz0gb3B0aW5kOwogICAgICAgIF4gICAgICAg
fn5+fn5+CgpTaWduZWQtb2ZmLWJ5OiBQZXRyIMWgdGV0aWFyIDx5bmV6ekB0cnVlLmN6PgotLS0K
IGV4YW1wbGVzL2NsaWVudC5jIHwgMyAtLS0KIGV4YW1wbGVzL3NlcnZlci5jIHwgMyAtLS0KIDIg
ZmlsZXMgY2hhbmdlZCwgNiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9leGFtcGxlcy9jbGll
bnQuYyBiL2V4YW1wbGVzL2NsaWVudC5jCmluZGV4IDdlZjU2NjM0N2U1NC4uYWFlMDlmNDgwYWY0
IDEwMDY0NAotLS0gYS9leGFtcGxlcy9jbGllbnQuYworKysgYi9leGFtcGxlcy9jbGllbnQuYwpA
QCAtMjIwLDkgKzIyMCw2IEBAIGludCBtYWluKGludCBhcmdjLCBjaGFyICoqYXJndikKIAkJfQog
CX0KIAotCWFyZ2MgLT0gb3B0aW5kOwotCWFyZ3YgKz0gb3B0aW5kOwotCiAJdWxvb3BfaW5pdCgp
OwogCiAJY3R4ID0gdWJ1c19jb25uZWN0KHVidXNfc29ja2V0KTsKZGlmZiAtLWdpdCBhL2V4YW1w
bGVzL3NlcnZlci5jIGIvZXhhbXBsZXMvc2VydmVyLmMKaW5kZXggMDA0ZWFmM2E3YWUxLi4wOTEz
ZmZmMGQwMTYgMTAwNjQ0Ci0tLSBhL2V4YW1wbGVzL3NlcnZlci5jCisrKyBiL2V4YW1wbGVzL3Nl
cnZlci5jCkBAIC0yNDEsOSArMjQxLDYgQEAgaW50IG1haW4oaW50IGFyZ2MsIGNoYXIgKiphcmd2
KQogCQl9CiAJfQogCi0JYXJnYyAtPSBvcHRpbmQ7Ci0JYXJndiArPSBvcHRpbmQ7Ci0KIAl1bG9v
cF9pbml0KCk7CiAJc2lnbmFsKFNJR1BJUEUsIFNJR19JR04pOwogCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlz
dApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5v
cmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
