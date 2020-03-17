Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 159F4188B6A
	for <lists+openwrt-devel@lfdr.de>; Tue, 17 Mar 2020 18:01:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Date:Message-ID:To:From:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=WWQywuw+SImsJU+J6v5MzhpIJAnZqXEowiDSpeIT+S4=; b=ChBgBQgWBqC4pF
	vkzqcTqVZ/J1PCwoCnsfXIuKE/3Hw+Svro0+7T52CnQnO9TeW0Cc6LCFNl0lSJ6zUnJBmS/NFpX14
	Oh7SbZcuIj9at/6NwS6vE7n1Q0P5yxrq1h1VYqu6979nXFoSVpdT6kzuV8Jr1GX5t+NIMlYugH/tu
	GTTGksZnwxeYS9H5Wcr6s7SyzMfvmJgbKKWK3JKoUjudrB2HhU+/s9kz9dBxDJqpBDhnVYY6RSXk1
	1OyTm64Vs/qO0IR3Ntt/UYBMZiwH/2KoXeizNSCRL51efTL+XvdUnTtIP5lSjP9KUbHPf70NIf24e
	azntMQ8KiBVQrPJk0r0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEFau-0007RI-G3; Tue, 17 Mar 2020 17:01:32 +0000
Received: from mail2.candelatech.com ([208.74.158.173]
 helo=mail3.candelatech.com)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEFao-0007QM-1I
 for openwrt-devel@lists.openwrt.org; Tue, 17 Mar 2020 17:01:27 +0000
Received: from [192.168.100.195] (50-251-239-81-static.hfc.comcastbusiness.net
 [50.251.239.81])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail3.candelatech.com (Postfix) with ESMTPSA id C72A813C344
 for <openwrt-devel@lists.openwrt.org>; Tue, 17 Mar 2020 10:01:24 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail3.candelatech.com C72A813C344
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=candelatech.com;
 s=default; t=1584464484;
 bh=bP0u/dm6rPZYY/5jzL+CIYh2J2E3p1rhAO1xTT0I9lA=;
 h=From:Subject:To:Date:From;
 b=qygThkiI3UrfWE0pFPVdVcUCwhIVB/O71Sr6roW3CCzJJb65UFO9OeCZnxbGDTN2S
 ihxwVlhyRkhX9vY7xcdYE/4/pJJ3PsRc45tOpV9Bz+oVrS9XEDY7y/IcwAiECODS84
 K2W2cdBq65QRNbU0Z8n9dvwOdgHJ94x5QKaAbh8w=
From: Ben Greear <greearb@candelatech.com>
To: openwrt-devel@lists.openwrt.org
Organization: Candela Technologies
Message-ID: <dbe48552-9caa-9f63-a239-920389db6f09@candelatech.com>
Date: Tue, 17 Mar 2020 10:01:24 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_100126_102435_A5DC8007 
X-CRM114-Status: UNSURE (   7.53  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] New ath10k-ct driver,
 supports vlans on 10.1 firmware.
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

commit 8df0a7f80a8bb2c49d3a16fe70f9a619d7bedd5a (HEAD -> master, origin/master)
Author: Ben Greear <greearb@candelatech.com>
Date:   Tue Mar 17 09:58:25 2020 -0700

     ath10k-ct:  Pull in recent 5.4 stable, etc

     Includes better tx-override support for wave-1
     Wave-1 can now disable periodic calibration (I think,
     not sure it works properly, but only useful for testing anyway
     most likely).

     Signed-off-by: Ben Greear <greearb@candelatech.com>

If someone can pull this into OpenWRT and test I'd appreciate it.

New firmware images coming shortly...

Thanks,
Ben

-- 
Ben Greear <greearb@candelatech.com>
Candela Technologies Inc  http://www.candelatech.com


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
