Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 15360E7B87
	for <lists+openwrt-devel@lfdr.de>; Mon, 28 Oct 2019 22:42:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Date:Message-ID:From:To:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=VFHQF4i8F2Q+1cp4Xegq+6OGVLyCtUqHRI59/P5aI+k=; b=BphYrYtjCc1dkQ
	C3L1wSymKA51ydE4qpDgQ4MNHta5Ca+VAEdPGuEGpv/B1Jejl2R8rRUe33MsuhE37mAYk/+N+lO20
	5cnmI5KMc7utgx0yXoL4dizrolV5U1q8E9tz0khtY4zXzAppXgB1MNF+LgVqEmnk+G3RrR+jbiteb
	d/9/ztQFh/kjduliwYs7WFrX+9IiCf3/jT9c1Gifu0hFLi8G2d8MWm4Jw+CryTDE6ZhUsMDtsjr45
	1ctYC4lzz7wYSQ9cKa0dILDEHqlnThfxalQ6JSBz3N99QnTRNfVO2ffYke1Z1m0CQkuWN7CUDUPDd
	U73CC/j00HSaQWjeYTqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPCmf-0005wN-SV; Mon, 28 Oct 2019 21:42:41 +0000
Received: from mail2.candelatech.com ([208.74.158.173]
 helo=mail3.candelatech.com)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPCmZ-0005vd-1C
 for openwrt-devel@lists.openwrt.org; Mon, 28 Oct 2019 21:42:36 +0000
Received: from [192.168.100.195] (50-251-239-81-static.hfc.comcastbusiness.net
 [50.251.239.81])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail3.candelatech.com (Postfix) with ESMTPSA id 21776137562
 for <openwrt-devel@lists.openwrt.org>; Mon, 28 Oct 2019 14:42:33 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail3.candelatech.com 21776137562
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=candelatech.com;
 s=default; t=1572298953;
 bh=+pRU9QnLc0ag6auuoboQVwiCXvIsj92UUcFH1vclbkU=;
 h=To:From:Subject:Date:From;
 b=m56RhpsiJL/+3lV5ZLcZGrlm93+GmuVldrxVH7F752MWuzdBXyF78f08gyH1seEAI
 Knugnli1Gh2vEGhIrkYxwAPuBaTTSmAo6Wid5BLJDEa0iOMBtbVN9oKylhGFMkJIRs
 GbvD+Wk/S3+XCCPPymAf8veisF0gxu06dMSoIY8w=
To: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
From: Ben Greear <greearb@candelatech.com>
Organization: Candela Technologies
Message-ID: <fa883a60-0d29-5cb9-7b54-3cab5485ec84@candelatech.com>
Date: Mon, 28 Oct 2019 14:42:32 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_144235_095554_BA40E197 
X-CRM114-Status: GOOD (  11.54  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] Any interest in a 'ct' iperf3?
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

We added iperf3 support to our network testing tool, so we could more easily
use generic third-party systems as remote traffic endpoints.  While doing this,
I ended up getting iperf3 to compile for and run stable on windows, found and fixed a bunch of
issues, and of course possibly added some new bugs.

Is there any interest in adding an iperf3-ct option to openwrt?  If so,
I'll cook up a patch.

Here is my change notes for what I did:

iperf 3.7-CT:  Changes from upstream iperf3

   * Support SO_BINDTODEVICE.

   * Make sockets non-blocking to fix various ways the client and server can hang.

   * Server will recover from client doing bad things or dying unexpectedly.

   * Fix socket leaks

   * Report summary stats in all cases on both client and server.

   * Allow compiling for win32 using mingw cross-compiler.

   * Add lots of optionally-enabled debugging to help understand what is going on when
     adding new features or debugging problems.

Source code can be found here:

https://github.com/greearb/iperf

Thanks,
Ben

-- 
Ben Greear <greearb@candelatech.com>
Candela Technologies Inc  http://www.candelatech.com


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
