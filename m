Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B4EA3EC8FD
	for <lists+openwrt-devel@lfdr.de>; Fri,  1 Nov 2019 20:21:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
	References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y+yTrdRfgcw095FcgeidVic9CNKrSMYDf9ITxFR3YCM=; b=I0fKvBT3IQbmtA
	n+vqzBCV/468kAbmYceAOHQfn3TryjoIdncurk+CqfaR38IaHX86EKjBN6QFOVv8ub5sR8l+yJXsn
	84lfzBiM5UqFan6hQ2xvD23c2xUeo/64V4BKSJRTZYTuTpz+210GqhssBr51Ghy4OiXfKAm7W7Na4
	WHyqubBLRrAh7iUf9cCFLUGg7fAJy/TfQudCZX03fVR1K6+wny82xyiwVAzmAE99o/bpg7rLVHfLY
	9MQqlJl9a/bv3BZ1r6ZUMcT9tG4hZHVZW84AWTYT5QYwSmI/HiJT3xtAxq7rZ91dyaBU3QNN9Ke6O
	cQiSGg281x3hOu7mHzbw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQcUB-0006LA-O8; Fri, 01 Nov 2019 19:21:27 +0000
Received: from mout.gmx.net ([212.227.15.19])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQcU4-0006KU-Js
 for openwrt-devel@lists.openwrt.org; Fri, 01 Nov 2019 19:21:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1572636069;
 bh=WdFyyyb/19L6E1ybJgGV4H6vjEOZT99kn9X9XBfey9o=;
 h=X-UI-Sender-Class:Date:From:To:Cc:Subject:References:In-Reply-To;
 b=kYilO4PlyjkCLK1a4CZI7WXhjuDMcea8JuUMQorjwavudQOI4osNx4CapLCCE1zz6
 FgTL5mmFCHKmCez/fCetNEUpx000eeMphBIozyJXeNoZCBVecEZAxvQbnq56jNUl4U
 hHXl/Xwih/Jr2ProzUp4kkSzmN0cdfFwxFJs8Z1E=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from darth.lan ([62.14.66.9]) by mail.gmx.com (mrgmx005
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1MoO6M-1hbweT0e0O-00op5E; Fri, 01
 Nov 2019 20:21:09 +0100
Date: Fri, 1 Nov 2019 20:21:07 +0100
From: Sebastian Kemper <sebastian_ml@gmx.net>
To: Rosen Penev <rosenp@gmail.com>
Message-ID: <20191101192107.GA3019@darth.lan>
References: <20191101091829.GA16215@darth.lan>
 <fc2f29ad-d8ec-a28b-930e-7c2dc85d7906@wwsnet.net>
 <CAKxU2N8gc-=S6VbeOQ5pUWmXiZyB6JQsC5Hb4PHq_HTMGVzrVQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKxU2N8gc-=S6VbeOQ5pUWmXiZyB6JQsC5Hb4PHq_HTMGVzrVQ@mail.gmail.com>
X-Provags-ID: V03:K1:JCo2Hh0fbfVKLJor/VP5fc5OYCCfFOshNAdqrHImOHto8TLOy8t
 OppiTiTvQaV635CsdHk8TqDahnmQL3hWlK2n+MG2LftmjmOU8zo7UuMOg+khHVggOyUeAfR
 JevaXtXDBGKCxR+Ca2VAUDVe8qlPtVRJhhW45Z1EAat65G122G4ZEXvj6/q7mzcw5oTdsUB
 +9C6gCAirAv+Ybkb9KPUg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:mBkHte3Wii8=:QKPBBDQL/ip+pNrvlU9AWk
 yzoSF4gzjNQq8fo2ivZgAer2Ap2WGqM2EqV+V7vE2HS3pguBPrrE7oDblF0LlWQ3fDJJQNKiH
 FjO9cVERSLZGV0g1i6jpasmxYY5P5inFedse8QnbZTtlPPCtGHPEL2sfa6t/VikGSivMTBkDM
 KTeFO9s3Tz05bHFPu5XtnTSgkY/1bcezRxQiNY6d3eROaqnIcg8bMax0BalrXMwj/nBKxU1YI
 2JhoC1VFVzvOO8l2n4mvWQnnf2Rp/9p2MMwWbBFGgyfo77t9gckaywoCVffjNnkpo6YwfNJts
 /t2SF2CA/QKo+mlQNdxoB7eOe97wh0ZX0z34H5VAuBmIygdKxp+p67JGVtICKj71QE0TDPJ66
 bMWKikNRX3EorWKPWcusNukZcATXXig9Ny2blKsN8LAp2e24JNnJA3fbVySIQA3m0gN5RWMfn
 kbiI4YA/6iWLWjCVN80XCX3NYminS7eqdSa5w+MaFIBcXj1L4NOjeTBie41odo8t+jXh3VOjd
 d1a5ShLY4OPVkGQbB9B1gcWQWqsWtIPQWuBRnmwhEMuWSvUSmpNdi9mdtKgt/T2ZTEuXIU1LU
 36E6sc8QdniKlULXa1F8KQTXe9v6QGgQSalDxLCSlK2ESrlU3s2rr2qGckhINZDNLjiw4p/rk
 n5szriA0l5rVir+yr2oNP6p3wZLHhnQ2D/DBmflh8PzJr/yrUH86zLTy8vNcyMwAKTWoOG6Ge
 4l667lLVGXx/iawUug6wrCEVptA1jqVrFN7QjMbzglqi43eFziD9JrOw1aW0tNQZJ5DH/EP1u
 LWIc0RR7EhsC3aYIpJ2WFSNQHwIVtk+Reu+APSDJGVo8TBrgEYVeqP0MtMdRMcqYKkPGM+zVV
 Wk0klGcmH5cVehYJi+zuMpuygf82QF5tl6zfrJoG+Z4JyGeaMfi8gDdienGGBSMvC61TwebN7
 67QzrlPIQZhR4ycxrrPyWWk/4G2wmLewM/4fojGRIjdT1QsQ3Rw8sOn9l8A3Ub6yG7WPC76iE
 UlIqR7ePrH9hwvPrlJsF1kOVpURvaWJgil7u2PZSOXt2ZHUntNeccVZbOl4TC/aE4W72D5Cr/
 z7ssAaYNis2K+qN62unbsWfV9QdJohULzLQwnbDkqApFYrc2fUfp6K6D7HH6j0rgnlZ3+3dqG
 M57nV9EPs03uSeUVNWlgDS3v090WReOjU50YKW/mdDZ+8Ac5yV1yYs/qaDitWvrdjOLD8RWih
 HkQ3dProuM3+f+PIOqFtV4CCaLlTEmTBAuB2kFk1NS4yv/H07cro1MMMzQ/o=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_122120_984495_BD3A14D8 
X-CRM114-Status: UNSURE (   5.61  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sebastian_ml[at]gmx.net)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] [PATCH] rules.mk: remove
 "$(STAGING_DIR)/include"
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>,
 Jo-Philipp Wich <jo@mein.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Fri, Nov 01, 2019 at 12:06:39PM -0700, Rosen Penev wrote:
> Would it also make sense to remove $(STAGING_DIR)/lib ? Locally, it
> seems libpam gets installed there (probably a bug).

Quoting FHS 3.0 regarding /lib's purpose: "The /lib directory contains
those shared library images needed to boot the system and run the
commands in the root filesystem, ie. by binaries in /bin and /sbin."

I think /lib should stay.

Regards,
Seb

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
