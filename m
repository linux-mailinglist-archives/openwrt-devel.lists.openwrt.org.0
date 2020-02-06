Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FF2C15420D
	for <lists+openwrt-devel@lfdr.de>; Thu,  6 Feb 2020 11:43:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=UaE/idLlVZ1XA9+pV1D6a5UXp+Oq6pRWsDaoacPnv7U=; b=ktquQ8hBCLmMRA
	xtSUhPdqk5tr9VCJElKhGsi3tqSM6ExQohXK9s92jWbL7OUQ79/XszF2A7PwydaUKnmleB9jHK5NL
	U5WI1PizIoW7KAaKNj7JtWZyZ2bwbTklJeILD141A41joqJB+mY8W3aG7YlXKrp8GSC7DraTBFKDT
	thKWn1zBmx+D1uogIyFRBeoeJpm81nuxW6wxHhzIxoBRCwXkPWzPMNB7OoPH0kG+6KMOlMwJXk9bg
	9nezez7dG5tSz8llzS8+pwF2M4dY0lI/Q5hmWFkYxLbM/Bl8R1QPciUT/xo0CyAfA+jGQwIQZCcRn
	5fnxRTe2RMNSMtUEdLsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izedC-0000ZE-0g; Thu, 06 Feb 2020 10:43:34 +0000
Received: from mout.kundenserver.de ([212.227.17.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ized6-0000Yv-41
 for openwrt-devel@lists.openwrt.org; Thu, 06 Feb 2020 10:43:29 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue108
 [212.227.15.183]) with ESMTPSA (Nemesis) id 1N4i7l-1jhgLK3VAN-011nBw
 for
 <openwrt-devel@lists.openwrt.org>; Thu, 06 Feb 2020 11:43:25 +0100
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: <openwrt-devel@lists.openwrt.org>
Date: Thu, 6 Feb 2020 11:43:25 +0100
Message-ID: <005a01d5dcda$42c389f0$c84a9dd0$@adrianschmutzler.de>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Content-Language: de
Thread-Index: AdXc2XO6zKKrvktTS9+W/ahPFc4m7Q==
X-Provags-ID: V03:K1:OO9veNDHXcIVVrEFeP0LAGrdUmMrDfVC/Llh5jms+KIU6Y5646N
 Z5B/37+HTsOWqltzbzF6RJPZO/ahbEkRQTFy5HMhvYJEbZFLVPhatNyS2J1sB74SF5WqE/J
 mNduAPZNfOqMUsee+GNA8s25gC4L0776ODfehSfIaHGhc3lxogfrzQPMLb4/Ww3A7zfDo9E
 j2Sot9R0RCCkKHVwuXUCw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:MbsxHyqxCqM=:uB53tg93L4kwTSw6X4olx1
 9rdMBrKnobYTDS+L1Gc/i7X4wNxBbwzaH4WUFCK7a4iLUhu+vtS/ZcN3Pl6TIrw9Fn3TV0Y/h
 NmF1a6/yIKm/NF1cHMs3sLIyaySlkR7HCeD1dCSrKULqxiL7MPo9Ck7WcQn4+tRHA0qlySx/D
 A+iFVQ/7PdZo8Caw14vcCKQC8xpNfVvfivl0igu0Q1Umdg//1UR2RvJfmUMZwcHDKmONLYwpi
 FMH3eGbwbYE+MxoFH28USY6YMgp3n4bPH9HVvLs+7hGXtn/qfx4T0GalguE8/x4mMuks03nrq
 fSrIWHfQ7kZ04Ogs0OOzZDNNpXYmhAWhAc74vXmH4CgSCBAuFAYYZ+Rp/RFI16dg3A0/SyY4F
 iRlu5WgptV91W9p11ei9TKWk7yA5bmwGlO4CQTJNOffk175uGgT0JJG9LMkU0Wji1Wo/eFT9A
 j2z7+gaUSZqzf8kIfgqpqxAHS6+ULRH1daO2wIS6onJ6jIR6z98RkVEhk7nNY32zrhYvH1eLz
 cq349s2Fec0NBPHyuBihdXFMqkOn7gQPpCGNqTay+eiP7co9faju2SlWj7b8G2LY7ZVdkIHMR
 7SeEwIdykJqxwO6g6nog/x8LOi0L7QEv92xbr9U2+QzZ+ufUkOTJGVoC5NdfF+bQCCoPbFgUz
 uk55lh5qOuYCTCOfCu/Rdo43fW/O9uEs8qZtt5Cw8+w3BdNrO8wBbZ0OVosqKhj8mfWCGQ2Qg
 CZDnUUtjv1NnbT7lCZ/haDcGE5SKy6I8w1EMjSjSCLR7MpwccE/6A07aygB5wtRY6+isQ/Z7H
 TcexQhumtd+gNgAj9wAZwh9VhDvdSWF+7wBCafEuPXcQdB3nO/5GR9aXYK5mCHYFJlfuRy5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200206_024328_458302_16D72709 
X-CRM114-Status: UNSURE (   5.89  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.24 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] tiny subtarget on ramips
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

we currently have a PR [1] where somebody wants to set SMALL_FLASH for mt7620 in
ramips target due to kernel size restriction for that particular device.

I'm actually not too fond of doing that to all the other devices because of one
single device needing it.

However, I wonder whether we couldn't introduce a mt762x-tiny subtarget to
ramips, where we would collect the 4/32 devices from both mt7620 and mt76x8.
Those two seem to be not too different with respect to their config, but then we
could set small_flash there and maybe take other size-relevant measures without
affecting the rest.

Thoughts?

Best

Adrian

https://github.com/openwrt/openwrt/pull/2645



_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
