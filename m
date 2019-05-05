Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6249414226
	for <lists+openwrt-devel@lfdr.de>; Sun,  5 May 2019 21:50:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=jmfsJYdt1TLGRjz8rIj7K3wGCzvGo1MIELmbIbabvvQ=; b=e4q/DLehWmUYos
	zrFPDBbvmLH5TeRj0alC2+nE04JM+Ge0e29WxnOFzLkKQxreWBW1y/SLHVM0eROz6i/DqohA31t2/
	iWXB3SuEN17VDEOW0U8FoCusNHjFI/bH/wqFEy6TgT/eI1PbHOUmuS9GoVIbjzSZDeG0YMpkNJvvd
	UTQySH+gn9e0UfxP8yqkR+CxMKGzMjIw4kG4Bpu0X6KKOKrsvXPKbU1InWUt3AvGpXIAVTYizr6rP
	ilqsGrFAdNK/mnGj7LPqA17DnUd15Thg1ps9JRnlkWm6/h+U01Kh5/TeiRK5zSncgn3UL3UIvV8cc
	C/jCWHO7g00HMbYEgpLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNN9o-0005DG-PS; Sun, 05 May 2019 19:50:44 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNN9i-0005CO-AS
 for openwrt-devel@lists.openwrt.org; Sun, 05 May 2019 19:50:39 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 8E45B3E9F;
 Sun,  5 May 2019 21:50:35 +0200 (CEST)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id 1f87717b;
 Sun, 5 May 2019 21:50:34 +0200 (CEST)
From: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Date: Sun,  5 May 2019 21:50:26 +0200
Message-Id: <1557085828-32209-1-git-send-email-ynezz@true.cz>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190505_125038_516360_5E5D545A 
X-CRM114-Status: UNSURE (   5.27  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
Subject: [OpenWrt-Devel] [PATCH 0/2] ath79: archer-x7-v5: improve ar8327
 initvals
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
Cc: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

V2hpbGUgdGlua2VyaW5nIHdpdGggUFIjMTk4NCwgSSd2ZSBmb3VuZCBvdXQsIHRoYXQgdGhlIGFy
ODMyNyBzd2l0Y2ggaW5pdHZhbHMKYXJlIG5vdCBpbiBzeW5jIHdpdGggYXI3MXh4LCBzbyB0aGlz
IHNlcmllcyB0cmllcyB0byBmaXggdGhhdC4KClBldHIgxaB0ZXRpYXIgKDIpOgogIGF0aDc5OiBh
cmNoZXIteDctdjU6IHJlbW92ZSBjb25mdXNpbmcgYXI4MzI3IGluaXR2YWxzIGZvciBMRURzCiAg
YXRoNzk6IGFyY2hlci14Ny12NTogc3luYyBhcjgzMjcgaW5pdGlhbCByZWcgdmFsdWVzIHdpdGgg
YXI3MXh4CgogdGFyZ2V0L2xpbnV4L2F0aDc5L2R0cy9xY2E5NTYzX3RwbGlua19hcmNoZXIteDct
djUuZHRzaSB8IDExICsrKysrLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCsp
LCA2IGRlbGV0aW9ucygtKQoKLS0gCjEuOS4xCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1k
ZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4v
bGlzdGluZm8vb3BlbndydC1kZXZlbAo=
