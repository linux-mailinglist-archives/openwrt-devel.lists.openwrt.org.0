Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DEB6C1503F1
	for <lists+openwrt-devel@lfdr.de>; Mon,  3 Feb 2020 11:11:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:
	In-Reply-To:References:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gkVkbiOYYhASlArgsZhN7ITS+rpCWOuOb041f1ff+bA=; b=aiYkH6amPwwUsc
	l2DkLKpHY/IULuSHtCWSyruBHnS3R6QonshPGNdhwQZJIa9MK0OEYv8Ss6VUlvrIyiCejQLRRiLya
	oP/5X8bWhiuUpGUyNJqTuZ8s09/+FfX67D1vqQz5tHUGM+XF5au7QqY9P1/EPV+hGoJ/Iu2pYGKcj
	+jTig79vdXpEfBIfobkc+qzOMDB9yr9Hgx7d88X7bWhMLEtTC3+usNWsiCGZZ6Ku41xENh8KU85I+
	rsD+1w5A1knR3RVDdRs/bI0v5uM7jBIquT6H9hM4VTfmsDayvi5wKeOENgegyXn6oQ0kWGF792ZQe
	Mlxkqdp8eel2H+B+HTsg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyYhC-0005vk-Gu; Mon, 03 Feb 2020 10:11:10 +0000
Received: from mout.kundenserver.de ([217.72.192.73])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyYgS-0005IN-Qs
 for openwrt-devel@lists.openwrt.org; Mon, 03 Feb 2020 10:10:27 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue106
 [212.227.15.183]) with ESMTPSA (Nemesis) id 1MUog3-1j6ylK2M0P-00QoED; Mon, 03
 Feb 2020 11:10:15 +0100
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: "'Paul Oranje'" <por@oranjevos.nl>
References: <20200202124828.2100-1-freifunk@adrianschmutzler.de>
 <a49ff1f2-a4ac-df8d-14be-4e9d3e111eee@gmail.com>
 <00fe01d5d9ed$171fe360$455faa20$@adrianschmutzler.de>
 <8DCA4B8A-6FEB-46E3-B7B8-680881ADEEB2@oranjevos.nl>
In-Reply-To: <8DCA4B8A-6FEB-46E3-B7B8-680881ADEEB2@oranjevos.nl>
Date: Mon, 3 Feb 2020 11:10:10 +0100
Message-ID: <01b801d5da7a$213b0900$63b11b00$@adrianschmutzler.de>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AQIXiMytygonP3R5G0DMOzc5KfUG+QLr8toFAjJY5gQBieEBM6dQoEtg
Content-Language: de
X-Provags-ID: V03:K1:M6k9sBfRpAyms7yv3+y2ipuJ1sJmHhNK9va0hCp+j3RCJicI5bI
 S34cCcxY8uMkcEl5fwWPKayFB4EDjOTOOQ7Xn1V8BY6O1x6nFhs+MkvVg3USLtgyHD6nB0N
 /pS+3ag38B5RZlrkjPmco0NEvYik2Ul8kMFRcTR5POjfSKtZx0mQBUXwIH0jQNUJS1Csq1F
 vZqAl6ZL8l/hu3NIORkYw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:sdzBO7iD2VU=:tjC2CM7ssZ2bFlTdtjZwEx
 mPAEI5nkrm/0tI9CZRLCRD52GxkvpY22MB+XTvKlmo7EQqB1zFFPVsGQqH39j5GHpXVz/gK3J
 dMs8heMbz96WflK5+24Kyo3PTFmi/5F0R7Qm3nq8xUMiJXLFAFc9hfTIV+3ZYijVGdLWsYj0k
 IgD9mj4hczdQ/oOQOXJgVsYgmjjUMCAxcDKHW00ri8QzvNM2RXGarVYpnnfq2z1CkCjrnxlx/
 6EbO29BVeENrBknBVRPgKsSw7lbPNDv5RHQu2tu6WPu8wNWaIQnhLhtLNdqoTw1T56/wA1EeK
 t59l51GVeFl3VpmlOlMLgP17TpoD/DShxOEQMNGn7F74AH1OMeJHcwX/50QhbhCvuX0i27X57
 ckmkM67xP3P4Z62P5KHw1HYXNq9S8jFbNbbu4dPIgpPA4nthYRdwUaxjfb4rIjVr7j3+eKDak
 cyT/QulApvcfX1Sidwhtu1aqbwPWs+vJO14cw5zSJhFE6mmtYRVS+BRnftKYKS846ArvRCtRW
 g+KMwd/GNwNVZ6kwO2AcP4JHBUGwjtUALBX1nyaypOuiWnRfcbQzVhnXfgjDLEOKf+DnANNZE
 N3FImUDNr4IBwd+8rf8F4NVh1sBkadCS73SoDYyCnxgEkxqeHHMhSYA65tySgNsyFCUyU2ksp
 4+1EZCsxIehPDNoSID9brH2tdGjJRdyRNTSx2hQvGXQ5HCNKJZJ31tiqrUIJudsOrJqUPwjgn
 T7CAPSVCj9gn8wCemq7t9COW+xI+a/zL+NWHWvvzAFwPqauoBzk9oKw7E/0Vfeo75bx2p8kXd
 cZq9qe95ppG6nESjkLmNtyOnruv3AuOIHYt49zaWXVz75lQ5qrJMEM7QgNqB6NYBIkr6xJp
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200203_021025_177438_0247B538 
X-CRM114-Status: UNSURE (   9.80  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.73 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] [PATCH] ath79: introduces KERNEL_LZMA variable
 for common build sequence
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
Cc: openwrt-devel@lists.openwrt.org, 'Piotr Dymacz' <pepe2k@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org] On
> Behalf Of Paul Oranje
> Sent: Sonntag, 2. Februar 2020 23:26
> To: <mail@adrianschmutzler.de> <mail@adrianschmutzler.de>
> Cc: openwrt-devel@lists.openwrt.org; Piotr Dymacz <pepe2k@gmail.com>
> Subject: Re: [OpenWrt-Devel] [PATCH] ath79: introduces KERNEL_LZMA variable
> for common build sequence
> 
> Op 2 feb. 2020, om 18:20 heeft mail@adrianschmutzler.de het volgende
> geschreven:
> 
> > ...
> > We could also use KERNEL_DTB_LZMA of course, but I do not think this will
> really bring a benefit.
> Preferable, as it is more clear what it is supposed to do, e.g. to those that
are not
> enjoying the OpenWrt makefile magic on a every day basis.

Okay, so I just use that one on ramips (change) and ath79 (introduction).

> 
> Regards,
> Paul
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
