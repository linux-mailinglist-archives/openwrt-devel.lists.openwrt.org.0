Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 66D45143275
	for <lists+openwrt-devel@lfdr.de>; Mon, 20 Jan 2020 20:34:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=84HcsbXSFhCUggicy54H/mGb5PIk6EdSuTNlXrW0yQA=; b=fPUVT1Du5elYzZ
	Gd2CUX0BYuPsY1rpmXpjDT/xCHIf9KBVY4m5LGet1gbiRle6D+bu75hlkJtL7Hbg3WLVRHWAtkmv5
	fTkowhlwF+LPtC6b7W20cBev+Qv1X2kHrYRv/f1jNqGxqx7rzU6sF4/lF+VBu6ptA+gumW7fiUk38
	atBH/tgKqlaNbedbHBNj+r0T/mezsYfDwOI1i65Aj51j4CbipNAVAQTZlw1TOuaxGkGHMbBF7vQU3
	d0Qv00WLoK++qEUPvTxudy1JshO7TamWAZgJEXYOSOQMQy2tRmdfiK9ah1VRywyWp6XnmlmfBuJfB
	kAVAN3GLgl6r+SrGxiyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itcog-00034M-N7; Mon, 20 Jan 2020 19:34:30 +0000
Received: from mx3.wp.pl ([212.77.101.10])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itcoX-00033s-Lw
 for openwrt-devel@lists.openwrt.org; Mon, 20 Jan 2020 19:34:23 +0000
Received: (wp-smtpd smtp.wp.pl 29618 invoked from network);
 20 Jan 2020 20:34:16 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wp.pl; s=1024a;
 t=1579548856; bh=5kI28opI63kJgBlvN1JZOXjUuRP0MPv7hXS0T4j0Pjk=;
 h=From:To:Cc:Subject;
 b=AdqfLztgUIRJbtQvdFpeZDRgTt55vksmWty0gz9/uQYCKf4/eyviD6TTCQCI6vRhy
 VcC112FeOajuiGZPnMfnBsEe+CE6k/Xn47Isls8uofI3KBuO9q+hWxkftER1AtT0ap
 RlzFq9eUCdgMtXHkDpqW8GbK8zsXq/qNFrtGH9W4=
Received: from 89-79-49-72.dynamic.chello.pl (HELO kosmio.komorska)
 (michal.cieslakiewicz@wp.pl@[89.79.49.72])
 (envelope-sender <michal.cieslakiewicz@wp.pl>)
 by smtp.wp.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <mail@adrianschmutzler.de>; 20 Jan 2020 20:34:16 +0100
Date: Mon, 20 Jan 2020 20:34:15 +0100
From: Michal Cieslakiewicz <michal.cieslakiewicz@wp.pl>
To: <mail@adrianschmutzler.de>
Message-ID: <20200120203406.6d2dd40d@kosmio.komorska>
In-Reply-To: <002601d5cedf$04f87bc0$0ee97340$@adrianschmutzler.de>
References: <20200119120816.44406149@kosmio.komorska>
 <20200119121001.71dd8822@kosmio.komorska>
 <002601d5cedf$04f87bc0$0ee97340$@adrianschmutzler.de>
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-slackware-linux-gnu)
MIME-Version: 1.0
X-WP-MailID: a17ea809a347b29df1bd422f2338ebd6
X-WP-AV: skaner antywirusowy Poczty Wirtualnej Polski
X-WP-SPAM: NO 0000000 [0bM0]                               
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200120_113422_246514_14CFB932 
X-CRM114-Status: UNSURE (   5.21  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.77.101.10 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [michal.cieslakiewicz[at]wp.pl]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: Re: [OpenWrt-Devel] [PATCH 1/2] ath79: WNDR3700v2: add dash before
 version in device name
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

On Sun, 19 Jan 2020 16:42:12 +0100
<mail@adrianschmutzler.de> wrote:

> Hi,
> 
> > -  SUPPORTED_DEVICES += wndr3700
> > +  SUPPORTED_DEVICES += wndr3700 wndr3700v2  
> 
> That would have to be
> 
> SUPPORTED_DEVICES += wndr3700 netgear,wndr3700v2
> 
> Best
> 
> Adrian 

Thanks! I'll issue v2 soon with that one fixed.

Best regards
Michal

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
