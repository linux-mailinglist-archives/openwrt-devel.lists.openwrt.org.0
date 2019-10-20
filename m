Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 408B9DDE2D
	for <lists+openwrt-devel@lfdr.de>; Sun, 20 Oct 2019 13:07:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=WCB6D+t10zNMjGDtX4Xuce02d7ZTxz59igFAUmvNefM=; b=QC6rg84r15emeup3sUFGUV2OvS
	EzoPhC4fPAuNBK4a+XvkJaYpieseRP8A70QP44NIpII9rALwXqWRGWhRcZOKD1U3mlWGlznQESruv
	0bPpVHonoYlvycbf01PRw7L8bXKLefb6fxvkybPbom+CisFiQwlAvXOwS4adSXE65+3w9WgngHoqT
	ZN89ySATJKdVuv4JG+eoLATy6iYTcVS/FiQcxNVB9D27H81daLHWSwGaNL6xVwTROkIF7Tfd4H5Wn
	zxpG4A6G1ccOuz13Q+XIxsH+uy02cYk8oRBT/xkmim4vaM/kFZGhGGhHzHkoTVhI1GN+vTcBaMGID
	4od7YBDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iM93d-0006rZ-Ni; Sun, 20 Oct 2019 11:07:33 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iM93U-0006r9-Hw
 for openwrt-devel@lists.openwrt.org; Sun, 20 Oct 2019 11:07:26 +0000
Received: by mail-wr1-x441.google.com with SMTP id e11so1955892wrv.4
 for <openwrt-devel@lists.openwrt.org>; Sun, 20 Oct 2019 04:07:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=TcPKyAQBiFwDtmMJaolJH42b0RbtKovUkc70P0kVEAQ=;
 b=CaCbFBhC+vm8wUuFyFzVe6a1wCv2zDLH/zgDihUDTu+pXwe7zmYxNroDo+Plq8mC4h
 X52mpBcg5yzlCNf3C+O6vdnJL9rxdanB5qaFGIxeGwth8epkBauZRAyYRjnwDABsDdMR
 q8uJ5DD406BN+nDxlVXS0KE+e28X7jEQNZHlQKD/WQoJGdbWn2pGSEF0JLrgXBdreieC
 rFmp/idh288Mcl4QYOtPCTCUFgpH4PeFyBR4soJEBuSf881ijRqI2zOQEclMKrR/EyKf
 acahiaMpOl5KduekseHNxQiwqBYfTejs9n5ei+ZQ1oRL3DCC7j0fEl9hdZSh3Rh/2Wcc
 MzjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=TcPKyAQBiFwDtmMJaolJH42b0RbtKovUkc70P0kVEAQ=;
 b=qRz+WW5hnYroMiWLJwlITpGm/s00/ulNqefEMXLzHR6y4ZxW9k7bZF8NSvgqJyZEGp
 biIgur/o6k7lSrlQ6YicEkaxjVCjENutiIT/dPz2R2NVC+CG8vjupeK4PgqMVc9oVd2J
 7Shh/rtrfxr+WfobMH6gmZXepuDWXaT17oe8oUemkn+GXw57wgDjl4Zhaoyrii0R+4gf
 yCKBWtDLeoI9MwC2vsGkpquW1mYKEAs/2Edn5A4B12Zkp9EOq5Ud8Uq+J9IRABu462lS
 jf0wzR1PtZA7IVDW3nDiJOXc6YTDVVDXJGytDBI1MHUUrjH57Q4vSWz2lDV0RHP6MhT7
 2MeA==
X-Gm-Message-State: APjAAAU8GfaJjxpNI6DlUONfMXFKPGisS1unNsHMmgvlTXczuADCHi+r
 mS3lImcC0sRv8y4rhgV2mcgZqSjo
X-Google-Smtp-Source: APXvYqxtKQWaMD+DdoNCzIlGxETZslIv1uTsdMHSD2WoNTeE7JXrkpR6v/6ma54VL8sikXnahx7bQg==
X-Received: by 2002:adf:f343:: with SMTP id e3mr15069887wrp.315.1571569640452; 
 Sun, 20 Oct 2019 04:07:20 -0700 (PDT)
Received: from debian64.daheim (p5B0D7BEC.dip0.t-ipconnect.de. [91.13.123.236])
 by smtp.gmail.com with ESMTPSA id v8sm13502375wra.79.2019.10.20.04.07.19
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 20 Oct 2019 04:07:19 -0700 (PDT)
Received: from localhost.daheim ([127.0.0.1] helo=debian64.localnet)
 by debian64.daheim with esmtp (Exim 4.92.3)
 (envelope-from <chunkeey@gmail.com>) id 1iM93P-0004F6-1C
 for openwrt-devel@lists.openwrt.org; Sun, 20 Oct 2019 13:07:19 +0200
From: Christian Lamparter <chunkeey@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Sun, 20 Oct 2019 13:07:18 +0200
Message-ID: <2298960.buRTO3r5SO@debian64>
In-Reply-To: <89c14047-2cb8-79b0-da9e-690ca71abc1c@phrozen.org>
References: <1569923958-99413-1-git-send-email-mutsugi@allied-telesis.co.jp>
 <89c14047-2cb8-79b0-da9e-690ca71abc1c@phrozen.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191020_040724_618546_98CC09D9 
X-CRM114-Status: UNSURE (   8.09  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (chunkeey[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: Re: [OpenWrt-Devel] [PATCH] ipq40xx: essedma: Fix dead lock
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Sunday, October 20, 2019 11:39:41 AM CEST John Crispin wrote:
> On 01/10/2019 11:59, Masafumi UTSUGI wrote:
> > edma_read_append_stats() is called from kernel timer
> > (Bottom half context) but it used spin_lock() to take a lock.
> > Using ethtool command rarely causes deadlock because of this.
> > Change lock function to spin_lock_bh() to avoid this.
> > 
> 
> Hi,
> patch looks good, could you please rebase it for v4.19 and merge the fix 
> directly into the essedma patch ?

Oh, I've already done that yesterday?

https://git.openwrt.org/?p=openwrt/staging/chunkeey.git;a=commit;h=3e8fc768f78c6b7f7025dd15264d113da9ad81b2




_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
