Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB6B7640EE
	for <lists+openwrt-devel@lfdr.de>; Wed, 10 Jul 2019 08:10:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=LQXbLY4aoYNKNVv9XtNLrhb6hGgKhDgLDnX2zQCo03Q=; b=HBJ
	pk3Rai+kNd8HqiSxbn4EbGBmHvIjGCfOcKZIT9meQ69b0+NFSIb3xtgtQ/cGrwPPfBW3xEoa0R0IO
	9iPW9uhV5g5SiADwlUl0+VcY34Zg8EeD+7S3cMu1d8VFtAPA7VTGUym8IQito/qm4nKMrPRgE5luP
	36YAqxvOrVqF42+tWB3Te/H/iklkg3eB61BKMMFeaqZPuokEsJxqG3ujjdWuS9CWNJuh4cJHFXtFU
	TymS/hTD2JKZf2sCcZSBUxxs75ohnkZpC9VJyImEPPrGNOD6sEIRckY+5Lu4hyZfw8ESskCjLszTj
	+rfmQ/q2uduVmgd/NxYePQOUzDtXhBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hl5nW-0005uk-TJ; Wed, 10 Jul 2019 06:09:47 +0000
Received: from mail-pl1-x629.google.com ([2607:f8b0:4864:20::629])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hl5nD-0005jP-Qp
 for openwrt-devel@lists.openwrt.org; Wed, 10 Jul 2019 06:09:29 +0000
Received: by mail-pl1-x629.google.com with SMTP id ay6so651342plb.9
 for <openwrt-devel@lists.openwrt.org>; Tue, 09 Jul 2019 23:09:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=yzfIz3EfCq+Xfe2CsirtMArRNNLofREKHRq/uRmHfzc=;
 b=bb9ZTattz0ambkN9m1j1zWC4Xbn2dw+QNZzCWgGcYUwV0wB7iXoobUMGK2fy6DVHyB
 JA9653OArDiBsdAAuMynCFqsILDPCHuq8vSjCqflrem2MRZptw1Y3KXO8+vPCCB+7x06
 IjR8YD/AX0b1Qu2W+NFOCUbI4muBlHTdh2sJqQ9zHHWdsLlFa8+1xCHOqvS1gHK95AYr
 VqywY2TrJYL5k7AkjoVw5aVOpSYwtxPvweZtLeA7Q4Ed5OhU4b+UrP8CGJ+pneLdDw74
 o3YGzFCMlgGFs/zuDZXkMmOIk0CzT+lVYHMQA6oJt1TcZM2qVRjvH1PvC6Qo0fdtIK7L
 6Qvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=yzfIz3EfCq+Xfe2CsirtMArRNNLofREKHRq/uRmHfzc=;
 b=Ag+/wr2qAiCY7kfYLxWLuPMG+OYgWutfYvaJU2rG80w/Ws/3VviCEuXjHffCf3TikU
 7ODsccdVXSypSxxUWvYKAGvfb2w84NGGSQsc5//7uJEeArKkM47CF+Pk2VYtlIH9fsKH
 5SyrWOIhALrF/OEx90yE4FGPo5dwkFARNcDevUZaxuzekFup8Ie+BYO7tvhj3BSRb3uO
 USp8bXx5TxH2+xWUBIy6Z4X51orpRm3+UoPxn5v3peLoIZqxMU3eFyAemgdGVYiwXff8
 5uUe224PO7hKiF16yfYpg7xbdYakIqYtIUgQIgkKr4A9xVa3/Tj0wf1YiXJvtTxgImTN
 Z42g==
X-Gm-Message-State: APjAAAWsuQ4Q11f6+DURMBjElmNWC+StS/0QWkZPUFlrQ1ljaNRut/HW
 DH7bnVCePXIn0rzqlCGh4YXCKCoeDmhazfDd7GwlM2nr
X-Google-Smtp-Source: APXvYqzBxd6rWAUwO/Y2ZhxK0pxOSiUw9/xBsbAJ82iYKvn+G4hnJazylhsubjf0AZq8GdqKUS4yWflJ376j7YsMJj0=
X-Received: by 2002:a17:902:be15:: with SMTP id
 r21mr20404200pls.293.1562738965174; 
 Tue, 09 Jul 2019 23:09:25 -0700 (PDT)
MIME-Version: 1.0
From: Matej Kupljen <matej.kupljen@gmail.com>
Date: Wed, 10 Jul 2019 08:09:14 +0200
Message-ID: <CAHMF36G6N0iqn_JjsRx4Qywxg+8086dxRLQDccwE6biW_ze=NA@mail.gmail.com>
To: openwrt-devel@lists.openwrt.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_230927_878200_70353202 
X-CRM114-Status: UNSURE (   8.30  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:629 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (matej.kupljen[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
Subject: [OpenWrt-Devel] ath10k on ipq4019 crashes and hitting WAN_ON macro
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

I have a custom image build from OpenWRT 18.06 and also have updated
ath10k driver and ath10k firmware to the latest master version. The
device is based on IPQ4019 and the image can be build using "QCA
AP-DK04.1-C1" target profile (with some modifications).

The device works O.K. and also the wireless is working. However, when
there are high number of stations connected to this AP, like over 60,
we are experiencing very unstable wireless connection. Looking at the
logs we see messages like:

ath10k_ahb a800000.wifi: failed to set beacon mode for vdev 0: -11
ath10k_ahb a800000.wifi: failed to set dtim period for vdev 0: -11
nl80211: wpa_driver_nl80211_event_receive->nl_recvmsgs failed: -5
WARNING: CPU: 3 PID: 9327 at
backports-2017-11-01/net/mac80211/sta_info.c:1001
sta_set_sinfo+0x9f4/0xa94 [mac80211]

(Unfortunately I do not have the whole log, but I'll try to reproduce
this again).

It seems like that there was something wrong with the firmware, since
we were getting errors that the driver practically cannot set any of
the parameters. Those messages were for 5GHZ, on 2.4GHz everything
seemed to be normal.

We also tried with the ath10k-ct driver and we didn't see any errors
there. But there is a huge difference between the drivers, since
ath10k-ct only allows up to 32 devices to connect, while ath10k driver
allows up to 512 devices.
Any idea why?

Has anybody experience similar problems?
Is here the right place to report this problem, or should I report it elsewhere?

Thanks for any info.

BR,
Matej

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
