Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AEC12171612
	for <lists+openwrt-devel@lfdr.de>; Thu, 27 Feb 2020 12:33:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:
	In-Reply-To:References:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5aG2FY3R9na3miO2M2jMT2oXgy8XbN48ag6DnzxAiyo=; b=BicWsczZN94Ghr
	rg75LzlR3gy8oEVr0y6OUJt4wy2IAXIsMBmInJwEDdcujtOnLlS3aHClWQlNb/EGgUZmmJInV5eLF
	zdZBYQQ9/i6Nf36Nwp1v6c5Oh3JZ5OP240VrXN2SB4htkxLY5HO+OYYsycV202xlMT014rT17sR9u
	eHl6m5f/1JMpwXI6itR2n9X6j38ujR2+NuWasVQhTDfn/jYHWPtRh3g+Ua+52BSKvRNN80AbOJ/ZY
	Urh1I4NcgWMV4tIjgIR6eQJEZ1motf1ur+IhjU7Swz7wo2wCOGUPNhSMIMVrmLU/uLnzhubcpA9mx
	RYOI0NVX+oxsWGruWdbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7HQI-0006Dv-54; Thu, 27 Feb 2020 11:33:46 +0000
Received: from mout.kundenserver.de ([212.227.17.10])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7HQB-0006DR-B8
 for openwrt-devel@lists.openwrt.org; Thu, 27 Feb 2020 11:33:41 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue108
 [212.227.15.183]) with ESMTPSA (Nemesis) id 1MGz9p-1jAq4L1tQJ-00E3NY; Thu, 27
 Feb 2020 12:33:34 +0100
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: "'Russell Senior'" <russell@personaltelco.net>
References: <87tv3dtzut.fsf@husum.klickitat.com>
 <000701d5eca7$6ae4f0e0$40aed2a0$@adrianschmutzler.de>
 <CAHP3WfN9-r86VfqQ1VWjGywnxuO2EoPWD54PweaqDvbAT6r3Qw@mail.gmail.com>
In-Reply-To: <CAHP3WfN9-r86VfqQ1VWjGywnxuO2EoPWD54PweaqDvbAT6r3Qw@mail.gmail.com>
Date: Thu, 27 Feb 2020 12:33:28 +0100
Message-ID: <00a901d5ed61$beb98ea0$3c2cabe0$@adrianschmutzler.de>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Content-Language: de
Thread-Index: AQKyOHC2ZsrvrsN7wRnTorTWuhqfswIHrOmpAczimiGmV6wTkA==
X-Provags-ID: V03:K1:pXGlNNIRGEeSxAHScR5rSiXxi6oG4P0bBuTlmvHNYBs0/aVEuFy
 8/tu5PHyJ2zDzSTAUTOByn2KHti+r68ED7+ZR4wTD9am+Ykjb3cmIlrRCmJ+LvwI7Ki44L8
 2l0oPdomdfswB96GAdC1H3WCYmIitvxt4EnU9rvNmExv7n59mI9XtA6m+LSpSeVDeGCNLHp
 AW44pBGM75fx6aOIbX4dQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:GfaNBOnFWfQ=:rOd/c46WIHT5G8IUB/samG
 6m9nwI4yB36HVmqHDudc+9wtTEJv4ExsMRWpvuPXmqN2Jqf4KRMxZnYKfgwP+yRBf2VZztQrb
 HqgDjsemtceitdE6QOb55nn3kyO4uwKnOdYCjPBkhrkstKjCmsrTiTpMG3f/xTVKDW9AposQk
 WDlB9KRsO1WyoSM/3N+pAB7rCSRLgd+OBJXAnFoHI5Z+7xvBvpe7MEPNgj3xugfR/8Zo9Ec5c
 4rcQVsHr98RYh/1gu7wr+/8KNCtRVHnNatZ3WjWo1CO0O7UNLs3wkOFdXN7SdYF3UsqeRU91v
 +KepJ9v+3KgcNgZehFzRnIxzIWUgF8p4clL8iu+gcaXgpjzmKten7OUIn1sZ5tO3HC/+WVCau
 KXTpRgDewOfjriZjX/Q56akjRKbEpkQaG+MlFclmdAEe+4iUL8O5I1xWgJNYAGVTnOQqI7pvT
 boXpbRjFd19LBiFMrQLT+HA733/cQQNCsXiPc6c0zrP56Ix5CA/qXAt9XhjcqzefliWwTlQdB
 9rBlbBxw5hdHyjemREjg8kTh9cetQT5DZbb805/ixiyns7qpfdH42wLRMVIqN+CgGJCzptuFt
 6bW/xN5Rci8Xg9muucdSmzy+g3lie63wgRAFU+LGzjTWNvYrIW/0BbmLklmExihtVyD0dk5w9
 kjaYed3wZF/So9SvzZi+UenUsO5qZBCeOfGBx0QLC0ipBeR8lpeiMfefp7BPVy/0WoBvHM760
 bzb+mvWxssuoeHtB2tsrX6ccEjBI03xgHYh7ZLGQhYXteSvNmXpklD9oW3EgPT83PiNUjdp0r
 YFhUXenqYP1EUWcGBriJ/v3557IPAH+vj4ALBOqYTcuc+TbZ0fN92e1rb3mbVAqmYMCAcMH
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_033339_789718_1AE016AD 
X-CRM114-Status: GOOD (  10.24  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.10 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.17.10 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] [PATCH RFC] ath79: add support for the ar7240
 version of the ubiquiti bullet
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
Cc: openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

> > What's the base for the v0/v1 distinction? Is that visible to the user somehow?
> > I fear that meaningful naming will be the biggest problem here...
> 
> v0 and v1 mostly come from the need to distinguish between them. You could think of the digit as the least significant digit of the SoC. We could make them -7240 and -7241 instead of -v0 and -v1 to be slightly clearer what the names mean, but that seemed ugly. And, no, as far as I know, the SoC is not indicated on the exterior of the device at all. The user will have to figure out the right version to use somehow.

That's what I feared. I do not like the -v0/-v1 very much because this is somewhat "reserved" by hardware revisions as TP-Link uses them, and will have everyone looking for a printed version on the device. So, I'd actually prefer -ar7240/-ar7241 suffixes (which will also clearly state what's the difference) unless we can find some identifier from Ubiquiti.

What happens if you flash the "wrong" image? Do you see any chance to have one of the images as "default" without suffix or would this make things worse? 

Best

Adrian 


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
