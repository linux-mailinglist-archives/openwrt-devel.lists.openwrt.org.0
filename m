Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2556812E054
	for <lists+openwrt-devel@lfdr.de>; Wed,  1 Jan 2020 21:07:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:
	In-Reply-To:Date:References:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l2bPRr+djEh9QTHV9KilBx1DQHD6Ax6QiyqO+KL3/YU=; b=iZgfDA9PCw7QI2
	nphhT/s139XVK5SzR3ODqG5XSYlr2Az882rjAuJ3NmlLRs1AVA3YGoyar1Y3erjBBxpswT3GektQD
	dCb3WHknIFnYYa37dpbQgSnS8QLb8he8ZmkI7o3tFJpH1LRcsk2XofoxxqDFItUOZSuCuAmYRnp8p
	jJPOHybuGWopKBInwKDj2Rye8t35hPtO74vthkb7uEPbzT/bQu2uCPuMfSDdYsz0UfnR4T+hqNcCk
	tQEwzyDZ1kL0f9MlR1o/4dSrArqQL+y+L8bvt9WwOgW8tYjRdDt66BhUaOkIzjzAvuY9SQtvBA2mW
	zclSsjIvla0TygS2UFcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imkGg-0006Tw-S6; Wed, 01 Jan 2020 20:06:58 +0000
Received: from canardo.mork.no ([2001:4641::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1imkGb-0006S9-7d
 for openwrt-devel@lists.openwrt.org; Wed, 01 Jan 2020 20:06:55 +0000
Received: from miraculix.mork.no (miraculix.mork.no
 [IPv6:2001:4641:0:2:7627:374e:db74:e353]) (authenticated bits=0)
 by canardo.mork.no (8.15.2/8.15.2) with ESMTPSA id 001K6hYa024538
 (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO);
 Wed, 1 Jan 2020 21:06:43 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mork.no; s=b;
 t=1577909205; bh=ZSp033IO9wkh04BJ5eVy4S/27n1kvnhEEJuYqd1Pe+o=;
 h=From:To:Cc:Subject:References:Date:Message-ID:From;
 b=fgAsyUo5mjloMeyaHx5JmRKUreJJyYIjIxFTPpTgDz0Y7MMlcvJMrCjs2fYbuqgXQ
 yZqg7u7Bq4NByzVMVXxtIx4ZdykKiLDPlLStSPtONBm8jBTxJetBfYkXN1lqKnwiKa
 mvU0TLtC82s1zJu9hkc0SMsXEbGGfTqAFfUxcPwo=
Received: from bjorn by miraculix.mork.no with local (Exim 4.92)
 (envelope-from <bjorn@mork.no>)
 id 1imkGR-00028D-Fa; Wed, 01 Jan 2020 21:06:43 +0100
From: =?utf-8?Q?Bj=C3=B8rn_Mork?= <bjorn@mork.no>
To: Jo-Philipp Wich <jo@mein.io>
Organization: m
References: <CAJXyS=ivRQx3D8kJ8p3eoN0CtzVu-Y1LvuPHb24CcHs2o3DWsw@mail.gmail.com>
 <97b99a6a-6d85-a858-3ff6-809cc5b13b6d@wwsnet.net>
Date: Wed, 01 Jan 2020 21:06:43 +0100
In-Reply-To: <97b99a6a-6d85-a858-3ff6-809cc5b13b6d@wwsnet.net> (Jo-Philipp
 Wich's message of "Wed, 1 Jan 2020 17:29:39 +0100")
Message-ID: <87h81fx7os.fsf@miraculix.mork.no>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1 (gnu/linux)
MIME-Version: 1.0
X-Virus-Scanned: clamav-milter 0.101.4 at canardo
X-Virus-Status: Clean
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200101_120653_749998_A5D98C57 
X-CRM114-Status: UNSURE (   6.49  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4641:0:0:0:0:0:1 listed in] [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] dev.archive.openwrt.org cert expired
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
Cc: openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Sm8tUGhpbGlwcCBXaWNoIDxqb0BtZWluLmlvPiB3cml0ZXM6Cgo+IHRoYW5rcy4gVGhlIGNlcnQg
d2FzIGF1dG8tcmVuZXdlZCBidXQgdGhlIG5naW54IHJlbG9hZCBmYWlsZWQgZHVlIHRvCj4gYHNl
cnZpY2VgIG5vdCBiZWluZyBpbiAkUEFUSCBmb3IgY3JvbmpvYnMuCgpUaGFuayB5b3UgZm9yIHRh
a2luZyB0aGUgdGltZSB0byBleHBsYWluLiAgSXQncyBhcHByZWNpYXRlZC4KCkZXSVcsIHlvdSdy
ZSBub3QgdGhlIGZpcnN0IG9uZSBmYWxsaW5nIGludG8gdGhhdCB0cmFwIHdpdGggY2VydGlmaWNh
dGUKYXV0by1yZW5ld2FscywgZm9yIHZhcnlpbmcgcmVsb2FkIGZhaWx1cmUgcmVhc29ucy4uLgoK
CkJqw7hybgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
b3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9y
ZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZl
bAo=
