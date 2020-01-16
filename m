Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AAF613F49C
	for <lists+openwrt-devel@lfdr.de>; Thu, 16 Jan 2020 19:52:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=USK1WDujF0HZ48iPuu1gUGNTfhGvkhJyCuXcK4la2fI=; b=lj4KYLFbUj4mM7
	d+yWlm9aKopWwU1BGWvM369Au+wgNwyPcx+BKLm+91rL1jMj4bMVkL/A72wAjkzPyKNOEx3dq1pHJ
	S9sfZQUHTRkEkbSCbSP+SMXlCCJwYDfvcPODAWQtYEZnDH4hTGoQrarXKr24+SmDxqO20MuZptrre
	kk/lx8kJjbXkw33vaZWI/4VuLSPWoqj+0e2XXnppgpjwfZDMIi3RIoKhTJcyTXij2F2+J4SZIZmRJ
	g49TIKRgogOHcUGp8sGf866HSn9PIQG7QE12W96yvmpp+d/gmqO5ffdYvWQ5rycixvhTCxNrMjiNl
	V2PyzmAPbxCNRCC+R+iA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isAG6-00013V-Bb; Thu, 16 Jan 2020 18:52:46 +0000
Received: from mx3.wp.pl ([212.77.101.10])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isA7h-0006mr-WD
 for openwrt-devel@lists.openwrt.org; Thu, 16 Jan 2020 18:44:09 +0000
Received: (wp-smtpd smtp.wp.pl 22195 invoked from network);
 16 Jan 2020 19:43:59 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wp.pl; s=1024a;
 t=1579200239; bh=Br/UN66KZflaftmMpJ25P009Qp1SHSJFFa529Lk73Cc=;
 h=From:To:Cc:Subject;
 b=s0BgX7BG6+QGZ4RD7L2vVS9T9osiv/XfUAeQrOhYxbIcHV6226S55ETcwZWO7arHN
 aGh7jQepbXRU/cFdpilqyVtJFxhpS05g0/EgLTlJULRJ6aq1KmV5QSBOwauOV2WaZE
 tom1xOcifi8JxgZs46m2wP1g0G13EOFWv99Zey4Q=
Received: from 89-79-49-72.dynamic.chello.pl (HELO kosmio.komorska)
 (michal.cieslakiewicz@wp.pl@[89.79.49.72])
 (envelope-sender <michal.cieslakiewicz@wp.pl>)
 by smtp.wp.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <ynezz@true.cz>; 16 Jan 2020 19:43:59 +0100
Date: Thu, 16 Jan 2020 19:43:59 +0100
From: Michal Cieslakiewicz <michal.cieslakiewicz@wp.pl>
To: Petr =?UTF-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
Message-ID: <20200116194359.775fffdd@kosmio.komorska>
In-Reply-To: <20200116114813.GC84286@meh.true.cz>
References: <c0dd994d-fb68-1845-60cb-2dfcc3d5455a@hauke-m.de>
 <CAMdYzYqL3-6s4vcjyT7=UDDQTN85RNQTRQ77ixvRnBk2EaBDHQ@mail.gmail.com>
 <20200116114813.GC84286@meh.true.cz>
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-slackware-linux-gnu)
MIME-Version: 1.0
X-WP-MailID: 69ff1be41e4013df6d97c1c5e7012075
X-WP-AV: skaner antywirusowy Poczty Wirtualnej Polski
X-WP-SPAM: NO 0000000 [oTM0]                               
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_104406_593421_0F3834E1 
X-CRM114-Status: UNSURE (   6.45  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.77.101.10 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (michal.cieslakiewicz[at]wp.pl)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] OpenWrt 20.X release plans
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
Cc: Hauke Mehrtens <hauke@hauke-m.de>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>,
 Peter Geis <pgwipeout@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi!

Speaking as a small part-time contributor of some Netgear WN(D)R routers
code, please reconsider if jumping over 4.19 straight to 5.4 is not a
too big leap. I'm sure kernel devs here knows better than me how many
OpenWrt drivers, quirks and enhancements can be ported without too much
effort from 4.14 to 5.4 that will really benefit from newer 5.x code,
but here are my 5 cents.

I was able to port ar934x-nand code from ar71xx 4.4 kernels to ath79 &
device-tree 4.19 without going too deep into low-level NAND operations
thanks to only minor changes in kernel code. 5.4 apparently deprecates
some functions in that area providing 'legacy' knobs for
who-knows-how-long. If this particular flash driver won't work with 5.4
at the time of 20.x, routers using it (like WNDR4300 and
other AR9344-based) effectively will not have any stable OpenWrt
release supporting it even though they were in master since the end of
2019.

IMHO OpenWrt should have an one final, rock-stable release based on
latest 4.x LTS kernel (4.19 that is) with ath79 replacing ar71xx
whenever possible.

Apologies for being so Atheros-centric :-)

Cheers
Michal

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
