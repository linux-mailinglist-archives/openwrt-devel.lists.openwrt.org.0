Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 29FA94169E
	for <lists+openwrt-devel@lfdr.de>; Tue, 11 Jun 2019 23:08:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Date:Message-ID:
	From:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=247iW8f9H2pYEN3dJ2HX4FHojeB8SBwXf2ksvXymkq0=; b=ln9pjT2ZuGPJXm
	C/WYVc/4FLbQphBjrlU9Nd5XzTHesHwupbK2OTvGUF40nFOzORaePwERZ8rP0xbhtr3rqo0E3alC8
	ii7U1rAo8+LOf4wOw3W14hVwknYM++XlMaJ+jUAdfRtroex2GSZ0XnbY2f87/MTzu7VwlwLaU8YZ3
	bwbuSDuvYLf0zRsJ05MAKQT438Oc9AMHpM5FRO1x28DWVpeow2nq7rkHKsV0mNSqzxd9NEv3cmfTQ
	bWqc6wIoxOa4WlUT/e1ftGHG8fM+DnJSvvzPf+ql/2NI2xSvg4hKvGcB4OBWQp+StPabvWBwQPJVs
	5xc3c39Wv+yxaIc9hW/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hao0R-0006mf-LK; Tue, 11 Jun 2019 21:08:35 +0000
Received: from mail.tintel.eu ([54.36.12.13])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hao0I-0006kY-4O
 for openwrt-devel@lists.openwrt.org; Tue, 11 Jun 2019 21:08:28 +0000
Received: from localhost (localhost [IPv6:::1])
 by mail.tintel.eu (Postfix) with ESMTP id 09ABD453E83E
 for <openwrt-devel@lists.openwrt.org>; Tue, 11 Jun 2019 23:08:22 +0200 (CEST)
Received: from mail.tintel.eu ([IPv6:::1])
 by localhost (mail.tintel.eu [IPv6:::1]) (amavisd-new, port 10032)
 with ESMTP id oCtuySq2HZTC for <openwrt-devel@lists.openwrt.org>;
 Tue, 11 Jun 2019 23:08:21 +0200 (CEST)
Received: from localhost (localhost [IPv6:::1])
 by mail.tintel.eu (Postfix) with ESMTP id 5E81A443E70D
 for <openwrt-devel@lists.openwrt.org>; Tue, 11 Jun 2019 23:08:21 +0200 (CEST)
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.tintel.eu 5E81A443E70D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux-ipv6.be;
 s=502B7754-045F-11E5-BBC5-64595FD46BE8; t=1560287301;
 bh=gI6zgvrrXkVu1DJVV9ybWdhsP0qFTyG1m3k3bnDMu68=;
 h=To:From:Message-ID:Date:MIME-Version;
 b=vsV+avnF6cFMYYq9wmcQMK8kIWhTgJOueOodJ3XAJm3V4Y/ni0klKOhyN3p3490qM
 5YDnhSQnauWN9XUduQGj1H1h0ulDlqxYcToLEq8hVb+4seECT106gy4lzOwy9KTavY
 bK5FU/6cGbEwpOldTlXXv45B2cEq+OWIpHRPv3l0=
X-Virus-Scanned: amavisd-new at mail.tintel.eu
Received: from mail.tintel.eu ([IPv6:::1])
 by localhost (mail.tintel.eu [IPv6:::1]) (amavisd-new, port 10026)
 with ESMTP id YxO54dN_8qDm for <openwrt-devel@lists.openwrt.org>;
 Tue, 11 Jun 2019 23:08:21 +0200 (CEST)
Received: from [IPv6:2001:67c:21bc:24::adb] (taz.sof.bg.adlevio.net
 [IPv6:2001:67c:21bc:24::adb]) (Authenticated sender: stijn@tintel.eu)
 by mail.tintel.eu (Postfix) with ESMTPSA id C2850453E83E
 for <openwrt-devel@lists.openwrt.org>; Tue, 11 Jun 2019 23:08:20 +0200 (CEST)
To: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
From: Stijn Tintel <stijn@linux-ipv6.be>
Openpgp: preference=signencrypt
Message-ID: <f81aabc8-e8e5-42ea-37ab-2adeb4728896@linux-ipv6.be>
Date: Wed, 12 Jun 2019 00:08:17 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_140826_495603_FA15DFE8 
X-CRM114-Status: UNSURE (   3.82  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.1 DKIM_INVALID           DKIM or DK signature exists, but is not valid
Subject: [OpenWrt-Devel] KERNEL_PATCHVER in master
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

Hi,

Since we now have a 19.07 branch, is it OK to switch KERNEL_PATCHVER for
targets in master that have 4.19 support to 4.19?

Thanks,
Stijn


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
