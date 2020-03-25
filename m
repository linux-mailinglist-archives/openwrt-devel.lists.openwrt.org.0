Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 83E3F19323F
	for <lists+openwrt-devel@lfdr.de>; Wed, 25 Mar 2020 22:00:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Date:Message-ID:From:To:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=jWg6qJrYAJUCnvMtGV+0qRyABNU5eRBsMBxJrGKu2Cw=; b=CBHtj0sCqVPg+H
	Yndh01zOXo7t5VFsJNwT7q5WizLfMsd2QRuiDUbRHAgXC0XBH9RtQ+Y0gKL1uyb9XugqFZ5PDJzcc
	A/VdCOyVcnK2YTshVhUCKYXlF1Q9Pxqe7I0c8QOzSgtZVVnKo04jXeK2iUUvRrdFHwvXUFyCF3ViG
	E1kwZ5VWMIBmfaSZYRGtlLsKNHe07m+8v8PL9O9anV5yvPK9Vqkvo6I+1GA3gYgga62bo/0vG07aL
	1ZrYqCJl4PIbykrULi61XEiro1CpKkJ7fuV5bTvfqnCY6tHX/16lCZk2EMonb6RC7oXmh7O1SCbPi
	mm5FdZVWBje9IUxT8Wfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHD8j-0001cq-NI; Wed, 25 Mar 2020 21:00:41 +0000
Received: from mail2.candelatech.com ([208.74.158.173]
 helo=mail3.candelatech.com)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHD8c-0001cQ-A7
 for openwrt-devel@lists.openwrt.org; Wed, 25 Mar 2020 21:00:35 +0000
Received: from [192.168.100.195] (50-251-239-81-static.hfc.comcastbusiness.net
 [50.251.239.81])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail3.candelatech.com (Postfix) with ESMTPSA id 4306313C341
 for <openwrt-devel@lists.openwrt.org>; Wed, 25 Mar 2020 14:00:33 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail3.candelatech.com 4306313C341
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=candelatech.com;
 s=default; t=1585170033;
 bh=iiGrWanXnMHSLT6G44xHvxAxN36bXz8zNNxtkxqUy4Q=;
 h=To:From:Subject:Date:From;
 b=HndxEDJRvOhNus0aNmx0W6EtvbYVIY2PYCxDJ6dR5Yrc/rnlYjHUwrhZl0sDLdiQG
 Jp+mn3fisBpmZzVM6BTdFZ+sKqacZcIjub8Be/bStn6wdCuqZSliLl8k3fHosURFzh
 k8z7O57MVSJLF87YOXdT9ga9NFq2TbUHp+wQG2SM=
To: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
From: Ben Greear <greearb@candelatech.com>
Organization: Candela Technologies
Message-ID: <08b3e0c4-9bb1-5544-c269-626ca4076b4f@candelatech.com>
Date: Wed, 25 Mar 2020 14:00:32 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200325_140034_376837_915B2F52 
X-CRM114-Status: UNSURE (   9.05  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] Updated ath10k-ct driver
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

I just pushed a fix for wave-1 firmware.  This bug was exacerbated by
a firmware fix that made power-save work better.  Firmware update email
coming next...

commit 3d173a471d3e583f2885ce68190c4387424cecc5 (HEAD -> master, origin/master)
Author: Ben Greear <greearb@candelatech.com>
Date:   Wed Mar 25 13:57:07 2020 -0700

     ath10k-ct:  Fix 5-sec flushing hang on wave-1 ath10k-ct firmware.

     The driver cannot wait for a singe vdev to flush, so we just don't wait
     for the flush.  This fixes 5-second hangs when bringing down stations,
     especially when power-save is enabled on a station.

Thanks,
Ben

-- 
Ben Greear <greearb@candelatech.com>
Candela Technologies Inc  http://www.candelatech.com


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
