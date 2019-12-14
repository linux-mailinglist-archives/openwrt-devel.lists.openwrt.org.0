Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3676911F4FD
	for <lists+openwrt-devel@lfdr.de>; Sun, 15 Dec 2019 00:03:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Mime-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Gf2+uJbrscUns3r7BPyOgyKLeabOHb5nBTSRQU9qKIo=; b=gns2h9qOQYJgY0
	KD1edaRzjGRUDXbg9RySSwztZZOJkTJJUHMjnRkASTK+FDn7DJsHJNOzWz3lzBvGH7dJ/4Sq4duIR
	6kW8aYD5Mk8+F/B5o3jZg2PqZLbnWRmM3lD6NzjuMjohOXriOtItpbKr2XoxIIeKg4MxIQnz4lRZz
	E/qj9VsmRtZb0GHzR99XzR9DJ8mz56bTazmoHDkGc7/Rb7fMYBdE1KI8tAme6766zXM+CtkET+znc
	+UHet+KvvOf4ibuJN+1TqfVjbHbHNMVxpXTnmH2gRcGZswD4igLLGGLXvHcUazbssuvAXMHrY04Yp
	IyPSo/59ugjNOh9oyGiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igGRF-0006zn-QL; Sat, 14 Dec 2019 23:03:05 +0000
Received: from mailout.easymail.ca ([64.68.200.34])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igGR4-0006z4-HT
 for openwrt-devel@lists.openwrt.org; Sat, 14 Dec 2019 23:03:00 +0000
Received: from localhost (localhost [127.0.0.1])
 by mailout.easymail.ca (Postfix) with ESMTP id 1B4E622372;
 Sat, 14 Dec 2019 23:02:52 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at emo06-pco.easydns.vpn
Received: from mailout.easymail.ca ([127.0.0.1])
 by localhost (emo06-pco.easydns.vpn [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id h6PuvDymH5Ec; Sat, 14 Dec 2019 23:02:51 +0000 (UTC)
Received: from [10.0.2.101] (pool-71-184-94-200.bstnma.fios.verizon.net
 [71.184.94.200])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mailout.easymail.ca (Postfix) with ESMTPSA id 8DA4A2236C;
 Sat, 14 Dec 2019 23:02:50 +0000 (UTC)
From: "Ted Hess" <thess@kitschensync.net>
To: openwrt-devel@lists.openwrt.org, "daniel@makrotopia.org"
 <daniel@makrotopia.org>
Date: Sat, 14 Dec 2019 23:02:49 +0000
Message-Id: <em02797504-f3aa-4a10-a70f-3c6f2adba652@twonky7>
In-Reply-To: <72795206-d999-c459-4fa6-ae09df4e92f7@phrozen.org>
References: <e13712e.36225d.16ef3b3ec4c.Coremail.rqgxfc@vip.163.com>
 <CAKR_QV+a___R2qsPSf6vtpk+JUPqvt3ZdvTHQA9Y_pFOZ-R6zA@mail.gmail.com>
 <20191211142209.GC1371@makrotopia.org>
 <72795206-d999-c459-4fa6-ae09df4e92f7@phrozen.org>
User-Agent: eM_Client/7.2.36908.0
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191214_150254_637921_AD6F024B 
X-CRM114-Status: UNSURE (   7.59  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [64.68.200.34 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] Inquery
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
Reply-To: Ted Hess <thess@kitschensync.net>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org


>On 11/12/2019 15:22, Daniel Golle wrote:
>>As a community, we decided to give our self a set of minimal rules[1].
>>And even though it is in the last position, rule #12 "Be nice to each
>>other." is meant just as serious as all the other rules.
>>
>>So here, not for the first time, you are using language which has the
>>only purpose to hurt other people (for which reason ever, it doesn't
>>matter). This is therefore a very clear violation to the above
>>mentioned rule. You statement "suck it" (guess what) is also an obvious
>>and disgusting example of a masculist culture which hurts our community
>>as a whole and I strongly believe we should not tolerate that.
>>
>>And yes this was a spam mail. And it's even needless to say that
>>replying to a spam email in which ever way will always make it worse.
>>But that's not the point here and I will not engage in any discussion
>>on that matter.
>>
>>Please learn to behave or leave us alone.
>>
>>[1]:https://openwrt.org/rules
>
>+1
>
>
And, +1 from me - thanks.

/ted


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
