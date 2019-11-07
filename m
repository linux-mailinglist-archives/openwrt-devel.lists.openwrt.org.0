Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FE35F3BF5
	for <lists+openwrt-devel@lfdr.de>; Fri,  8 Nov 2019 00:08:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ePzODtfisPjDllfdSD06gKo6jGf3JkGgZdKFcort9AE=; b=eEZkK1JYHfX5Uf2HIwyNCHcY08
	jinNk7qjpFmCTOEUZmuKc7MEzc1DuEiA8QYFEygXALLoPXRl3ky19AHhmHcmEPpjQAkORH+mjrBjH
	uvf5n6SmFC6JEC+LIjv9wOMp2FWBdyVpQEqg0aSKRhxa86K8QJgNDpfKyRlraF59u1EFtceZYBkW5
	vOdvWfEsBU8HNnjXfkINtY++0MPelOAMM4kEVZ6Bc7ZBZg83zyEESA9x4YtWWKyCh+8+oF6hFLsgS
	pi42sB1sp6pKu7ebpGpL8RMGae87/StVuzjqDM+I1l4BD6H+V1UFwKtEzW1gyIPKuUwUZccN560De
	p5F9wqjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSqtB-0004Ay-4o; Thu, 07 Nov 2019 23:08:29 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSqt4-0004AO-7h
 for openwrt-devel@lists.openwrt.org; Thu, 07 Nov 2019 23:08:23 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 6A8926D2D;
 Fri,  8 Nov 2019 00:08:19 +0100 (CET)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id a20f3ebf;
 Fri, 8 Nov 2019 00:08:09 +0100 (CET)
Date: Fri, 8 Nov 2019 00:08:09 +0100
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Hauke Mehrtens <hauke@hauke-m.de>
Message-ID: <20191107230809.GD67608@meh.true.cz>
References: <20191101160634.25559-1-hauke@hauke-m.de>
 <20191101160634.25559-2-hauke@hauke-m.de>
 <CAECwjAij-tXE59c2WEKEWPpofTCrmWgwwW_MYnW1cB_yXiKnVg@mail.gmail.com>
 <20191105002707.GO22393@meh.true.cz>
 <1b6c6276-e964-5ddd-990d-931ac199159c@hauke-m.de>
 <20191107085108.GC67608@meh.true.cz>
 <97c156cb-5011-b6a9-b429-c32d34da5712@hauke-m.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <97c156cb-5011-b6a9-b429-c32d34da5712@hauke-m.de>
X-PGP-Key: http://ynezz.true.cz/EC796FB2DC69CEF9.asc
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_150822_426249_F1E319D6 
X-CRM114-Status: UNSURE (   3.80  )
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
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
Subject: Re: [OpenWrt-Devel] [PATCH uci 2/2] build: Add -Wclobbered to
 detect problems with longjmp
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
Reply-To: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
Cc: Yousong Zhou <yszhou4tech@gmail.com>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

SGF1a2UgTWVocnRlbnMgPGhhdWtlQGhhdWtlLW0uZGU+IFsyMDE5LTExLTA3IDIzOjUxOjUwXToK
CkhpLAoKPiBIb3cgZG8gd2Ugd2FudCB0byBnbyBmb3J3YXJkIHdpdGggdGhlc2UgcGF0Y2hlcz8K
CmFzIG5vb25lIHByb3ZpZGVkIGJldHRlciBmaXggZm9yIHRob3NlIHdhcm5pbmdzKG9yIHByb3Zl
ZCB0aGVtIHdyb25nKSB5ZXQsCnRoZW4gSSB3b3VsZCBzaW1wbHkgbW92ZSBmb3J3YXJkLiAgWW91
ciBjaGFuZ2VzIHBhc3MgYWxsIHVuaXQgdGVzdHMgYW5kIENJCmNvbXBpbGUgdGVzdHMgc286Cgog
QWNrZWQtYnk6IFBldHIgxaB0ZXRpYXIgPHluZXp6QHRydWUuY3o+CgotLSB5bmV6egoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBt
YWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3Rz
Lm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
