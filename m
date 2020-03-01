Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D194A174C32
	for <lists+openwrt-devel@lfdr.de>; Sun,  1 Mar 2020 09:07:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Date:Message-ID:From:To:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=nRCvcWxnKvPQ7UuBk6dbRO9xlth9W4w+ZMM9dR9GJ2I=; b=uOM8TTwQ3Gx0Eu
	JwCsmyPCD/tGRj5pOrOVKjJv8fmIOokG7/3L9hxkRX6JARM50zSkvxkSlDFbV68DuBcBEwldm71d9
	wBChMqERJRVTXELLec8IjkJaul6UcS6nua2047FHM/a5ARKUVQ1VLSaSpSf3XzuAJ9ogPX9h9IhvU
	YodzALNhtVbcLBEtVxdstlzZRieCajuDPPqDhi2CG++kIHSoDNul9WTVA20eFZNv+lt8hUG4HSNGn
	jQXMMywvGzROf7P7JUWVFtXtKWzOdWAcbbwsoQ/5JRuHQ84I5queRa+0CGNW6dO8dF7FDkA/DBCU3
	I4s2l6TbS0EQNIWfIcqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8JdS-0002on-EV; Sun, 01 Mar 2020 08:07:38 +0000
Received: from welho-filter2.welho.com ([83.102.41.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8JdK-0002nN-TH
 for openwrt-devel@lists.openwrt.org; Sun, 01 Mar 2020 08:07:33 +0000
Received: from localhost (localhost [127.0.0.1])
 by welho-filter2.welho.com (Postfix) with ESMTP id DC3FD2090B
 for <openwrt-devel@lists.openwrt.org>; Sun,  1 Mar 2020 10:07:26 +0200 (EET)
X-Virus-Scanned: Debian amavisd-new at pp.htv.fi
Received: from welho-smtp2.welho.com ([IPv6:::ffff:83.102.41.85])
 by localhost (welho-filter2.welho.com [::ffff:83.102.41.24]) (amavisd-new,
 port 10024)
 with ESMTP id 0SDum_X47uef for <openwrt-devel@lists.openwrt.org>;
 Sun,  1 Mar 2020 10:07:26 +0200 (EET)
Received: from [192.168.1.180] (87-100-240-191.bb.dnainternet.fi
 [87.100.240.191])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by welho-smtp2.welho.com (Postfix) with ESMTPS id 6B52072
 for <openwrt-devel@lists.openwrt.org>; Sun,  1 Mar 2020 10:07:25 +0200 (EET)
To: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
From: Hannu Nyman <hannu.nyman@iki.fi>
Message-ID: <1b9536b9-de76-edb5-72ba-9061318570b5@iki.fi>
Date: Sun, 1 Mar 2020 10:07:26 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:74.0) Gecko/20100101
 Thunderbird/74.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200301_000731_109349_5705937A 
X-CRM114-Status: UNSURE (   7.36  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [83.102.41.24 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.7 SPF_NEUTRAL            SPF: sender does not match SPF record (neutral)
Subject: [OpenWrt-Devel] Buildbot semi-broken: lots of core package fail
 e.g. for mips_24kc and arm_cortex-a15_neon-vfpv4
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

There is something strange going on in the buildbot. It doesn't seem to like 
the current codebase.

Lots of core packages fail currently e.g. for mips_24kc (=ath79). The core 
packages is so intertwined that I can't even figure out which is the actual 
culprit.

https://downloads.openwrt.org/snapshots/faillogs/mips_24kc/base/

https://downloads.openwrt.org/snapshots/faillogs/arm_cortex-a15_neon-vfpv4/base/


Like I wrote yesterday, there also been lately "Could not generate file hash" 
or "This does not look like a tar archive" errors, which look quite 
suspicious to me.


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
