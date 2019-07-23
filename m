Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 007B9715F4
	for <lists+openwrt-devel@lfdr.de>; Tue, 23 Jul 2019 12:23:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=O5c3jp7JAIzx2s6/NhIuZkq1wbigAtZZvrAUnW6KLnU=; b=Fbg1M+fxGY4afs
	cgkX3Z3ZQy69gqWNP5o+Kjw45sTxSamYqMSUeneEMVmPxQ03yQRqnRC8X+me+blgWQ7fH2QmL2F6z
	+D186bbFmZ7Pb6P/jn6Y+itGkhnVsimeOvs6LoNZVoEN3z5sNOxyrzxCTOT9wq7e5BEsDdPW32U1T
	If6UMdz9woJUWdlSfWCfGADO30/4umAxfGHpleF22rC57DY7Mc7I1Xfz7F0mnZTHQlKeMkfOxmbxu
	6oaC9+5tvds4aflbllzJgPYOALeeu0OHwBfBd7D08VrsC604NGvtGGcrTs1JOf7lauqhd95+WF6pm
	OSruJaCr1E0GgYH3QawA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hprx5-0007BC-32; Tue, 23 Jul 2019 10:23:23 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hprwl-00077l-Tf
 for openwrt-devel@lists.openwrt.org; Tue, 23 Jul 2019 10:23:05 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id AFCED3C5E;
 Tue, 23 Jul 2019 12:22:55 +0200 (CEST)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id 2d724b4c;
 Tue, 23 Jul 2019 12:22:48 +0200 (CEST)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Tue, 23 Jul 2019 12:22:52 +0200
Message-Id: <20190723102252.30420-1-ynezz@true.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_032304_111813_B03D1AF4 
X-CRM114-Status: UNSURE (   6.06  )
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
Subject: [OpenWrt-Devel] [PATCH] build: rules.mk: allow overriding of HOSTCC
 and HOSTCXX
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

Q3VycmVudGx5IGl0J3Mgbm90IHBvc3NpYmxlIHRvIGNoYW5nZSB0aGUgaG9zdCBjb21waWxlciB2
ZXJzaW9uIGR1cmluZwpkZXZsb3BtZW50L3Rlc3QvZml4aW5nIGFuZCBvbmUgaGFzIHRvIGFsd2F5
cyBoYW5kIGVkaXQgcnVsZXMubWsgd2hpY2ggaXMKdGlyZXNvbWUsIHNvIGxldCdzIGFsbG93IGNo
YW5naW5nIG9mIHRob3NlIHZhcmlhYmxlcyBmcm9tIG1ha2UvZW52IHZhcnMuCgpTaWduZWQtb2Zm
LWJ5OiBQZXRyIMWgdGV0aWFyIDx5bmV6ekB0cnVlLmN6PgotLS0KIHJ1bGVzLm1rIHwgNCArKy0t
CiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQoKZGlmZiAt
LWdpdCBhL3J1bGVzLm1rIGIvcnVsZXMubWsKaW5kZXggODBjYjNkNjNmNDQ5Li5kYzhhMWJhYzhk
ODMgMTAwNjQ0Ci0tLSBhL3J1bGVzLm1rCisrKyBiL3J1bGVzLm1rCkBAIC0yNDUsOCArMjQ1LDgg
QEAgUEtHX0NPTkZJRzo9JChTVEFHSU5HX0RJUl9IT1NUKS9iaW4vcGtnLWNvbmZpZwogCiBleHBv
cnQgUEtHX0NPTkZJRwogCi1IT1NUQ0M6PWdjYwotSE9TVENYWDo9ZysrCitIT1NUQ0M/PWdjYwor
SE9TVENYWD89ZysrCiBIT1NUX0NQUEZMQUdTOj0tSSQoU1RBR0lOR19ESVJfSE9TVCkvaW5jbHVk
ZSAkKGlmICQoSVNfUEFDS0FHRV9CVUlMRCksLUkkKFNUQUdJTkdfRElSX0hPU1RQS0cpL2luY2x1
ZGUgLUkkKFNUQUdJTkdfRElSKS9ob3N0L2luY2x1ZGUpCiBIT1NUX0NGTEFHUzo9LU8yICQoSE9T
VF9DUFBGTEFHUykKIEhPU1RfTERGTEFHUzo9LUwkKFNUQUdJTkdfRElSX0hPU1QpL2xpYiAkKGlm
ICQoSVNfUEFDS0FHRV9CVUlMRCksLUwkKFNUQUdJTkdfRElSX0hPU1RQS0cpL2xpYiAtTCQoU1RB
R0lOR19ESVIpL2hvc3QvbGliKQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0
cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8v
b3BlbndydC1kZXZlbAo=
