Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 02FBA14CE1A
	for <lists+openwrt-devel@lfdr.de>; Wed, 29 Jan 2020 17:19:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Date:Message-ID:From:To:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=NJpvVD8FYwYlSZA5h2plBkJG+pLdUP+XGXI94PUgCKk=; b=vDJEMaFdH/1vdI
	mGGf1l60djh5pCbKyRMmDhvn7ObBlSBeo2X+2qALlU3kjZUlTvHNiCUHU3KpvGquxPYFo77VK7I+L
	zT//oA+bpo6SBNZ+zoRol58D3fknoZLmDMc/eSwp23P2vJuoZetLzIbUmqD08vfBh79oBSsLqDiOB
	QeBYH+PYIYo8oErMgLdVCXkTRq6xWfF6Oqy6caCi9pgw55KvapPc1Sd4SFEYwxWe6mCXDxa3y993r
	FAnYop5ISCiY9mjiopcX3x4Zr41vOeCCRM4nFmY5FWvIuItjlfkSo8dBIzi+LbgEAvicDfrbACqNo
	R60IIwZpSg41eKEalA4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwq3o-0004ml-49; Wed, 29 Jan 2020 16:19:24 +0000
Received: from mail2.candelatech.com ([208.74.158.173]
 helo=mail3.candelatech.com)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwq3e-0004mT-MN
 for openwrt-devel@lists.openwrt.org; Wed, 29 Jan 2020 16:19:16 +0000
Received: from [192.168.100.195] (50-251-239-81-static.hfc.comcastbusiness.net
 [50.251.239.81])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail3.candelatech.com (Postfix) with ESMTPSA id 3414B137585
 for <openwrt-devel@lists.openwrt.org>; Wed, 29 Jan 2020 08:19:13 -0800 (PST)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail3.candelatech.com 3414B137585
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=candelatech.com;
 s=default; t=1580314753;
 bh=CYlDZtKo3hD8zXC+sNiX0k7W77nQk0k5nnQkHPZ6oMk=;
 h=To:From:Subject:Date:From;
 b=O2PEJ41OX6DNdb35h4A16kgJmNtHtcx+48f52Oh1rYJVt7g9y9reR9IVEepGHANJX
 BKlhMOGee0TEaJ6wxaTEMphsBGj9tpa3whcsokGnaeCiBvnFJfIq7RuFlIe1MGi++A
 Pt/LZ182V525cquoziw4EqD1XY0V1N76CcPdxqs0=
To: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
From: Ben Greear <greearb@candelatech.com>
Organization: Candela Technologies
Message-ID: <c8bd864c-cb9c-dd4d-740c-cea6d6f1f53f@candelatech.com>
Date: Wed, 29 Jan 2020 08:19:12 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200129_081914_779878_48C66E9B 
X-CRM114-Status: UNSURE (   8.55  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] New ath10k-ct driver available.
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

Please see below for commit.  New firmware message will follow shortly.

If someone can test and push to openwrt I'd appreciate it.

commit 3e3d0adb3cc6c6cf56a05ff661796948f09c5aa8 (HEAD -> master, origin/master)
Author: Ben Greear <greearb@candelatech.com>
Date:   Wed Jan 29 08:14:56 2020 -0800

     ath10k-ct:  Support better RSSI measurements.

     When used with recent firmware, these changes allow the driver to
     query per-chain noise-floor from the radio to better calculate the
     per-chain RSSI.  The per-chain RSSI is then summed to provide the
     'combined RSSI'.  This gives better per-chain RSSI as well as combined
     RSSI, especially when running with more than 20Mhz bandwidths.

Thanks,
Ben

-- 
Ben Greear <greearb@candelatech.com>
Candela Technologies Inc  http://www.candelatech.com


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
