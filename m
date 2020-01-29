Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E485514C7E6
	for <lists+openwrt-devel@lfdr.de>; Wed, 29 Jan 2020 10:15:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=t4MxrNsvI0bb1g4TZXzUdFpTUS7SxA0Sw6EDNRSWXwE=; b=T+YlWh4sx7TA6kHb373iwI8AI
	HjzfZVBV6LEK/u9GIPwl5faK+z8Ifdh/Cwl2T5s4V+GCsfR89pHj7jhu/SeJjAzbOzovp8/jb+uI6
	LOc+GnNKmtWRa55Qh5haUvv2GqXbBpou3Pbt8Rjtm2ATULLrXPG6DxCEBpn3c+nVAWTNoK+SUsp9F
	6LjmYgKRed01brPoWGBcYYHxOOvYtuAUOegLimjzFIcmc/ZDEfqmBsfsn8sti7gz9tjn5enFTIeTA
	xfR4RCt8phdGfNjoJgCKYNe35plTntkgRch03bNJUgqSbxna3ZJz4de94waUk13uBOxWsowhNVGrw
	n9wATbgeg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwjRY-0003CK-4o; Wed, 29 Jan 2020 09:15:28 +0000
Received: from lmr1.uibk.ac.at ([138.232.1.142] helo=smtp.uibk.ac.at)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwjRO-00039T-BO
 for openwrt-devel@lists.openwrt.org; Wed, 29 Jan 2020 09:15:20 +0000
Received: from mysh.local (ip5f5ac5ee.dynamic.kabel-deutschland.de
 [95.90.197.238]) (authenticated bits=0)
 by smtp.uibk.ac.at (8.14.4/8.14.4/F1) with ESMTP id 00T9FEXe021467
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO)
 for <openwrt-devel@lists.openwrt.org>; Wed, 29 Jan 2020 10:15:14 +0100
To: openwrt-devel@lists.openwrt.org
References: <20200129082950.239999-1-peter.stadler@student.uibk.ac.at>
 <20200129084842.GA6738@meh.true.cz>
From: Peter Stadler <peter.stadler@student.uibk.ac.at>
Message-ID: <5c9e5a88-6e02-300e-70f5-a2344299802c@student.uibk.ac.at>
Date: Wed, 29 Jan 2020 10:15:14 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.1
MIME-Version: 1.0
In-Reply-To: <20200129084842.GA6738@meh.true.cz>
Content-Language: en-US
X-Spam-Score: () -15.0 ALL_TRUSTED,RCV_SMTP_AUTH,RCV_SMTP_UIBK
X-Scanned-By: MIMEDefang 2.84 at uibk.ac.at
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200129_011518_709410_03C13C89 
X-CRM114-Status: UNSURE (   9.79  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [138.232.1.142 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [138.232.1.142 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
Subject: Re: [OpenWrt-Devel] [PATCH] libubox: use const *attr in getters
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

Hi,

thank you for your fast reply.


It is not faster/smaller as the getters are indirections to blobmsg_data 
(optimized they should have the same performance).


The problem arises, when you have a `const struct blob_attr *` and want 
to get the values: In C++ you cannot pass them to the get-functions 
without removing the constness. You could pass them to `blobmsg_data`, 
but the getters would be the cleaner way as their name is more verbose 
(and they handle the format).


So, it is (should be) more a cosmetic change that reflects the usage.


Peter


P.S.: I am also happy if the patch is not included. I just think, it is 
better to have them const at this place, too (I am not seeing any 
reasons, why it would we better to have them non-const).


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
