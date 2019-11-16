Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B897BFF3E1
	for <lists+openwrt-devel@lfdr.de>; Sat, 16 Nov 2019 17:29:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
	References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FnSux82+zWsSsL36PpW9YVvZHnvdpBLPtg1dg/erpio=; b=AmBs8+NKKMjF8F
	WHb6d1oHPY8Q0Vqw71C+eHTRfyPKuqI9+3ITws6HY8VPC0oV/dJBBNLS401nF9TUWA2hK6fQuU6dK
	Twh47dQ3YInqd6ulPinIF0FBM4OB6KgW5aarZdQhw0mATicNnarmI9dp7dEuYjDiC97LPtQMwh3lk
	6RgjUDqNIG4jPbVqWqNRGt2ecEnW7wB+a5lnHnWmnvNcOvYg4/sFaUa8O7k8K4ONWaF8R3xxhIIdT
	TB/iaPvKqYIr5c3ZYXnVPCjaTO7agNHvjMloWMeUAmxrh3FRUkETaMWsHAgGn7GXDbHDAWXfBElAn
	EDYvobYb3d1pwU8Y7n2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iW0wf-00056p-K4; Sat, 16 Nov 2019 16:29:09 +0000
Received: from fudo.makrotopia.org ([2a07:2ec0:3002::71])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iW0wU-00055L-4h
 for openwrt-devel@lists.openwrt.org; Sat, 16 Nov 2019 16:29:00 +0000
Received: from local
 by fudo.makrotopia.org with esmtpsa (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92.2) (envelope-from <daniel@makrotopia.org>)
 id 1iW0wP-0001y3-8v; Sat, 16 Nov 2019 17:28:54 +0100
Date: Sat, 16 Nov 2019 17:27:06 +0100
From: Daniel Golle <daniel@makrotopia.org>
To: e9hack <e9hack@gmail.com>
Message-ID: <20191116162706.GA1274@makrotopia.org>
References: <5bc298cc-cd3d-0cdf-9772-36fc86cb1680@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5bc298cc-cd3d-0cdf-9772-36fc86cb1680@gmail.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191116_082858_181174_89E0833B 
X-CRM114-Status: UNSURE (   6.22  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] Wifi is broken
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

Hi,

On Sat, Nov 16, 2019 at 09:17:08AM +0100, e9hack wrote:
> Hi,
> 
> this commit
> 
> commit	000b7687bc50be5b0f1161f4bf8ceb85c495c395
> mac80211: restore mac80211_interface_cleanup()
> 
> breaks wifi on my tp-link archer C7 router. After update, only the 5G wifi will be activated. The 2.4G wifi doesn't start. I try to recover from this by shuting down and restart wifi by executing 'wifi down; sleep 30; wifi &'. Afterwards, wifi doesn't start anymore. I modify mac80211.sh to get some more log entries:

I've reverted that commit and applied a more sophisticated fix instead.
Please retest and report if that works better.


Cheers

Daniel

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
