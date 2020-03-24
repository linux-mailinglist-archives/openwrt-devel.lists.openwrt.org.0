Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6441A190B9E
	for <lists+openwrt-devel@lfdr.de>; Tue, 24 Mar 2020 11:58:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:References:Message-ID:
	In-Reply-To:To:From:Date:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2bTklHDbvQOqY4q9mloyEaGb30j0l7FU9X7fQ4vX7Jg=; b=fpgaAoF0Zdx65z
	pQqcfl4XZRlNJY92tlAvjtEn2ETpmrqCp2DTWmcjh+ZG8RzwO6JnWY9T5Wr9j36y/ZEaCGOqH5gtf
	PQoewMWzHDTRJExHpGLwS+0MLda3eJ9H8eVIHcw6fRIDqnOM7FHW4wPDyIf+Cbwx4RRoAI7YGUeIJ
	lS0lyDRT1tMR0QHoA2yNZAF5sXYisdE/rWTNY97Gz0hKXKizyBwQ6tt3wN/zimaVHrYdp7hQsDOR9
	HjGwVlhTmnyunzJ3TXhx10965Tk0wUbKbmriOsgz6Cl45RTy4JuTaod0ZVO4j3OZNddWqv6tFlYG+
	WWZNqWki6H50ZfWTimbA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGhGL-0007Bv-93; Tue, 24 Mar 2020 10:58:25 +0000
Received: from mail-wm1-x333.google.com ([2a00:1450:4864:20::333])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGhGA-0007BM-Ts
 for openwrt-devel@lists.openwrt.org; Tue, 24 Mar 2020 10:58:19 +0000
Received: by mail-wm1-x333.google.com with SMTP id c187so2670389wme.1
 for <openwrt-devel@lists.openwrt.org>; Tue, 24 Mar 2020 03:58:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:in-reply-to:message-id:references:mime-version;
 bh=2cFc0+EAQGswwoexPeHzh6rkmRSJa0P1LkJa1BEd5X8=;
 b=NrCnNGDUtpK1Skk6pwoCeOEMt/bWaiWP3VJgYZGlkVyudPUy+xJve7Lp8R3JnIYRKx
 a9sX94etPXxAa8YP7sV4ZxIHVZlc3yHg5Bzju7hl0TFds0pTD+jH8xQJ+JnaDUDnTrV5
 SxQUa6cKaJ8ywmVk49feL+EV+3GggsWb06jHyqDS60N1iZrXAsyYKYReP2eHDCTiOtSc
 vNuUtDV/iJuHCblVSQTFDrfxIXwOyUV0Cr0cqTSI8m2eqF7nFbFPoKNxYCAujaSwFtzB
 m/EUnO6cQFxc2LxDDLgVxYNHNVhpc+MwsjteU6xw/wqrbltNx/cKgykjOWL6r/nfd2BR
 4zow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:in-reply-to:message-id
 :references:mime-version;
 bh=2cFc0+EAQGswwoexPeHzh6rkmRSJa0P1LkJa1BEd5X8=;
 b=LNoKDv1B4o+wOp/ofr4BgnoWkPLZXY3XvAKh/DBq8gzAMTom508FjevO6SwcGpwzqb
 jh+H/D6oLYxRdz2bjAL08iBmOgTnfmTnKn5+4LrqwojVSpBjg3efxSUIU7hV9Y4x26kN
 xFAqO2JwjTymzDlKmR0AcvYBdDh1qCSv4qpuO10GzYioyi/6TW4tszscIf4ax3uWpumJ
 tCAEUs+eE2P+gs8Qx6z4QCuHtYm7aQoNamVS0vQOFV+QxJSA9SHe6vda4EB+v3s04m+r
 92uy04EkSpMdI/H6zVqIsfpoHM73BEh18z/QrktRtCJxI5Dk+rWXfeqVUS4aRrsOORIF
 9v3g==
X-Gm-Message-State: ANhLgQ2xgK3eOfN08QYXDH9nsW9I/yTa4mJ85FvIRtdLynDKqz3bx6+G
 0DtFzpPoIzOSilbaHDGf59w=
X-Google-Smtp-Source: ADFU+vtgYHFVxgE9AYPo/agYEA7vI/dBSjegK+pW5tIhvxJyzPkXyXVhVVaBw6nheZNE2Wr58psbYQ==
X-Received: by 2002:a1c:f60d:: with SMTP id w13mr5034818wmc.171.1585047492919; 
 Tue, 24 Mar 2020 03:58:12 -0700 (PDT)
Received: from eeeinsomma (host48-12-dynamic.60-82-r.retail.telecomitalia.it.
 [82.60.12.48])
 by smtp.gmail.com with ESMTPSA id o16sm29067350wrs.44.2020.03.24.03.58.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 24 Mar 2020 03:58:12 -0700 (PDT)
Date: Tue, 24 Mar 2020 11:58:11 +0100 (CET)
From: Enrico Mioso <mrkiko.rs@gmail.com>
X-X-Sender: mrkiko@localhost.localdomain
To: Jeonghum Joh <oosaprogrammer@gmail.com>, openwrt-devel@lists.openwrt.org
In-Reply-To: <CALYKT1h=0uAMgM8R6TRS-DhnDc92ftVgsxKeAQ91Ls1yvVstAQ@mail.gmail.com>
Message-ID: <alpine.LNX.2.22.413.2003241157170.7925@localhost.localdomain>
References: <e09aecf7-dda2-baec-7237-b86a241f2488@marcant.net>
 <CALYKT1h=0uAMgM8R6TRS-DhnDc92ftVgsxKeAQ91Ls1yvVstAQ@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_035814_967166_B8FD2BF5 
X-CRM114-Status: UNSURE (   8.96  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:333 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [mrkiko.rs[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] How can I include strace into the firmware?
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

you may install strace with opkg from within the running device, assuming it has connectivity to the outside:
opkg install strace

or, you may select strace itself when building the firmware.
or


On Tue, 24 Mar 2020, Jeonghum Joh wrote:

> Date: Tue, 24 Mar 2020 11:39:05
> From: Jeonghum Joh <oosaprogrammer@gmail.com>
> To: openwrt-devel@lists.openwrt.org
> Subject: [OpenWrt-Devel] How can I include strace into the firmware?
> 
> Hello,
> I'd like to use "strace" in openwrt firmware.
> As you might know strace uses automake, autoconf and autotools.
> It uses configure.ac and Makefile.am.
> 
> If it's just suing simple Makefile, the directory package/ would be good
> place to place it, but strace uses automake - Makefile.am and configure.ac,
> ...
> 
> How am I supposed to include strace into openwrt source code?
> 
> Thank you in advance!
> Jeonghum
> 
>

Enrico Mioso
Personal Phone Number: +39 3807096934
Tox ID is:
7C593F402A3C8632D87AB4B948D492294C39A6A614464ECF843CA3429FB023284180472C7475

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
