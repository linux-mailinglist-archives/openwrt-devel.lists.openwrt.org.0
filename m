Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E41C20805
	for <lists+openwrt-devel@lfdr.de>; Thu, 16 May 2019 15:25:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H9sKgUftjdtm1is0pUtTq5XM0+tFx2fxLIAL4RxKHK0=; b=bvAlizEutgKR80
	OAi2A5QuDs8HRI3F1xrCuW+qmcKPhQaxtq5DFpLN7jLRDkFkbPw5FdjZz3f3b016DJ1UX5F/OAY3M
	u9+TXJ6ZmG+dY0718ZWfK31Lh1E4/lwFeE2Hzp9ShvNWEb/6EgQo9L+aoNLHyXOQllIeB8Vz05pM9
	M8Z6Q5EE1CDTfOkr4DlhYPG6s5dUDyirLmaqStdbrppOjDBZCkqPWEPiDVNyOVgy1tPcEaoipcM3y
	WrhOargOqvjEN7+pRJeOmgHPHP5pXlc5ekHUvs9JZ+xLyl6tjmwf0otAR2WFho79Uad092F0DefSN
	pMnLAcSMfIDGal9jSMjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRGNO-0000Jk-LR; Thu, 16 May 2019 13:24:50 +0000
Received: from mail-it1-x141.google.com ([2607:f8b0:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRGNI-0000JQ-1x
 for openwrt-devel@lists.openwrt.org; Thu, 16 May 2019 13:24:45 +0000
Received: by mail-it1-x141.google.com with SMTP id m140so6197741itg.2
 for <openwrt-devel@lists.openwrt.org>; Thu, 16 May 2019 06:24:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=5FzgMbmkoAp+QmCuMD7lwjmjDG48vfqlweClmXD9mec=;
 b=nAaUk78K0mK4H5d2GBwgYrL1SKnrGnvcShIiSEXo94v2blKPo79bC7MohxqGSkPsXn
 3pKBwlDVK6GvIxe8xi4AioELLEJQbyOvevEeAwgN7JBd9BXrml0vRZvaUI20jrWoMbhA
 Rls3G58lmQy7Ww/hUdVyX5wmO8JPZBv6IKFfW58R/Gbobu3i3M4ZgtncPDY6POnlPxAc
 fmJqPR3liTMXiXLcM2Gtyv4n/POMbMPK8nu7s73zqCndD1eCfVrhl/hRiVQxewLy4hao
 T9CHsNPYflM8xr+c57yYFlmVto4+rPi0OxA2UWLxv/5Blmvxe5vAbDq8K0mvCf6fWrCQ
 Jsug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=5FzgMbmkoAp+QmCuMD7lwjmjDG48vfqlweClmXD9mec=;
 b=JHeHt6nO5Syxlm+D9SLnCSkvK8nww3hSVjVwQB02j/uZIVctrItcKousQo1u2IRNTX
 PBKIcH8A1X9LRHGOdS3VqtqtdNGKA3leIiLyAiBqHX6K9VHPQkCJcCh1Wcv3LEw8cwmG
 B5bVruR0nIgoblFZA7GvFjt6Cl5w10WtwF0NkQ4MH5XjgjXkH4r/P1bL++V1hq0FaUqe
 wT7Ll7ed2dpNfwE3U716M8348Ieflrj6KJP1XrgTvSmJsRtQRpYniSejH6OZmRg3N8FW
 rJ/48VXLskAv8vcqPjWKb4L6ZvwTX99jyPWEdkmVLrHwqZ8G6n4sDBpO+sOrg0zVFPGN
 JuGA==
X-Gm-Message-State: APjAAAVZEkutsLHmK9+64UGMbtR4vFT55nA13tLdvCxISBz7g6oFM5zV
 8zVlU9/yWMaWxs6bed5BPR6Ku6QNNevz2xY40866pg==
X-Google-Smtp-Source: APXvYqycm1WKrhSdZLYc/Ls4Ng2ks3EFOBLqYzL9ionAYZP7xe/vr9o/CteZ4+Ds+hyGaZ3ApQqKYs0da5aqAJTJdW8=
X-Received: by 2002:a24:94c6:: with SMTP id j189mr5817039ite.97.1558013083041; 
 Thu, 16 May 2019 06:24:43 -0700 (PDT)
MIME-Version: 1.0
References: <20190516130231.31513-1-kristian.evensen@gmail.com>
 <20190516131744.GF63920@meh.true.cz>
In-Reply-To: <20190516131744.GF63920@meh.true.cz>
From: Kristian Evensen <kristian.evensen@gmail.com>
Date: Thu, 16 May 2019 15:24:32 +0200
Message-ID: <CAKfDRXin2JEtee2H2rw6hMFEyw40WGnje8uQ-g8WW=2BGP_+GQ@mail.gmail.com>
To: =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_062444_093874_5B945E20 
X-CRM114-Status: GOOD (  11.67  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (kristian.evensen[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] [PATCH v2] ramips: Add support for ZBT WE826-E
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

SGksCgpPbiBUaHUsIE1heSAxNiwgMjAxOSBhdCAzOjE3IFBNIFBldHIgxaB0ZXRpYXIgPHluZXp6
QHRydWUuY3o+IHdyb3RlOgo+IGl0J3Mgbm90IG1hbmRhdG9yeSwgc28geW91J3JlIG5vdCBvYmxp
Z2VkIHRvIGRvIHNvLCBidXQgaXQgbWFrZXMgbWUgd29uZGVyIGlmCj4gaXQgd291bGQgYmUgcG9z
c2libGUgdG8gZ2VuZXJhdGUgZmFjdG9yeSBpbWFnZSB3aGljaCBjb3VsZCBiZSBmbGFzaGVkIHdp
dGggdGhlCj4gc2FtZSByZWNvdmVyeSBtZWNoYW5pc20sIHRodXMgYXZvaWRpbmcgdGhlIC1GIGlu
IHRoZSBzeXN1cGdyYWRlIGFib3ZlCj4gKGNvbnNpZGVyZWQgZGFuZ2Vyb3VzKS4KCklmIG15IG1l
bW9yeSBzZXJ2ZXMgbWUgcmlnaHQsIHRoZW4gaXQgaXMgcG9zc2libGUgdG8gdXNlIHRoZQpzeXN1
cGdyYWRlLWltYWdlcyB3aXRoIHRoZSByZWNvdmVyeSBtZWNoYW5pc20uIEkgd2lsbCB0ZXN0IGFn
YWluIGFuZAp0aGVuIHVwZGF0ZSB0aGUgY29tbWl0IG1lc3NhZ2UgaWYgc28uCgo+Cj4gPiArKysg
Yi90YXJnZXQvbGludXgvcmFtaXBzL2R0cy9aQlQtV0U4MjYtRS5kdHMKPiA+IEBAIC0wLDAgKzEs
ODMgQEAKPiA+ICsvZHRzLXYxLzsKPgo+IFBsZWFzZSBjYW4geW91IGNvbnNpZGVyIGFkZGluZyBg
U1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IEdQTC0yLjAtb3ItbGF0ZXIgT1IKPiBNSVRgID8KCkFu
ZCBJIHRob3VnaHQgSSBoYWQgcmVtZW1iZXJlZCB0byBpbmNvcnBvcmF0ZSBhbGwgdGhlIGNvbW1l
bnRzIGZyb20KYWRkaW5nIHRoZSBIRFJNMjAwIC4uLi4gOikKCkJSLApLcmlzdGlhbgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBt
YWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3Rz
Lm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
