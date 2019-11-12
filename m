Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C004F98FA
	for <lists+openwrt-devel@lfdr.de>; Tue, 12 Nov 2019 19:42:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Subject:
	List-Help:Reply-To:List-Archive:List-Unsubscribe:List-Subscribe:Cc:From:
	List-Post:List-Id:Message-ID:MIME-Version:To:Date:In-Reply-To:References:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=KA3rQciOnVgQls9JKW98PG0SH+EXtZwIrVgfpSoFCe4=; b=AZcdLbfcRyy2uzsA6gEUDFj6H
	93N5d2ZHjoHqHyv9vL/o3HdMW7aTp2pOrhnQulbRZmqc4gqVL3Nu9M4abBiIMdg5N4I0Yf0MCSL5T
	JmHaLoKebc3fvRBsY2rvOyRfbNJHbdGlKrzhTr5NINUBPWEIj/Mafc91ZVHA6Oflp6QGsaOmpIz+V
	9MAE6mumf3J/SOHBD2Io3/nEKpyk10p0tmQHkckPifgfGd8hJggJ/TSO2rv6scbXlvR4C/QLLL11w
	BJOOJ9/wh3GTQiKu69ZscQEEyeBzUmO7tIT1HsixRxjsG8Izm3/f2dmWZk3uF/Bp1uCQXXSWBK33v
	bG5lhe7Eg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUb7e-0004uh-S7; Tue, 12 Nov 2019 18:42:38 +0000
References: <20191111205558.2403-1-ynezz@true.cz>
In-Reply-To: <20191111205558.2403-1-ynezz@true.cz>
Date: Tue, 12 Nov 2019 12:42:16 -0600
To: =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
MIME-Version: 1.0
Message-ID: <mailman.10804.1573584153.2486.openwrt-devel@lists.openwrt.org>
List-Id: <openwrt-devel.lists.openwrt.org>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
From: Thomas Albers via openwrt-devel <openwrt-devel@lists.openwrt.org>
Precedence: list
Cc: Stijn Tintel <stijn@linux-ipv6.be>, openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.29
X-BeenThere: openwrt-devel@lists.openwrt.org
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
Reply-To: Thomas Albers <thomas.gameiro@googlemail.com>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
Subject: Re: [OpenWrt-Devel] [PATCH] kernel-build: fix kernel_menuconfig
 breakage by forcing YACC
Content-Type: multipart/mixed; boundary="===============7223284689361114325=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============7223284689361114325==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

The sender domain has a DMARC Reject/Quarantine policy which disallows
sending mailing list messages using the original "From" header.

To mitigate this problem, the original message has been wrapped
automatically by the mailing list software.
--===============7223284689361114325==
Content-Type: message/rfc822
MIME-Version: 1.0
Content-Disposition: inline

Received: from mail-vs1-xe44.google.com ([2607:f8b0:4864:20::e44])
	by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUb7X-0004uF-La
	for openwrt-devel@lists.openwrt.org; Tue, 12 Nov 2019 18:42:33 +0000
Received: by mail-vs1-xe44.google.com with SMTP id u6so11505104vsp.4
        for <openwrt-devel@lists.openwrt.org>; Tue, 12 Nov 2019 10:42:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=AQTXk2915AM8d+LNCNEG6h5Ra8blIcEs2GcW9w1KWJM=;
        b=kQMTNLjqbOBrMnPmPrRLxpjRskvxs4cJpgXdpmgTK6sjl9x4B+VnY8m9w1GsWLlu74
         MBaj93T6BpVOGtWsUChEDIsS5fBRH1xJF3egf9wCp3u9spQTWasLzwjeeEepcA1x86bT
         8HVU2eu4sDZAdgosCS9G4rTQnWO51ShWfDjv7pVjLperAkkoWd8ktr5qZhc5V29KBLqp
         aTXNHcK52z9sRTq+KmBwO2m8uu/mQ6fWwNdfVHEwJTcquE+LdjTOpU7O+kbt75AyFzJD
         iXsWjU92kuRKbtjTPDerUA4qGCVzb975bB1zc5rzVOJUYGWOssOUHHGRaUJqKXj/5oxF
         zvSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=AQTXk2915AM8d+LNCNEG6h5Ra8blIcEs2GcW9w1KWJM=;
        b=YMxB0LcYFFDlVx6aO4Gl4p3SoGBdf0ln0zh7rAj2JnBKNd1kpCGOLopaeK4IgJfylf
         +ryoHfKi9ZnjagtrY51fMteBDIBuR1L2S8wWwAleZEbumNTiZzGdw1DUiko1tX2T3IXy
         iEs9rn2NVSkzpjyyoP5BEwXYx5RYnZbDo2qW/zv8liNB+dczCXRXqAjtBDmt59bX2zeX
         sD4fL71fHbj5oDTK3zY1q6ylDPJFDqb5THPIZdgd0+FH9avuwfd2/XMshzTPFKJzG3F0
         5RO0E/8Z22RXrJpw49nXqdLn4EzT3Q48/NocqvXBN0B4pex8hDt35x3ECVDn2zsXjgvP
         KJPA==
X-Gm-Message-State: APjAAAUZuD7C2Ghn2M4wLR0Wo1HcdWiQnUGVSlJdTjKuO1uDOXoZd1yK
	CY8v8F0L6tA8mYHzGJCinY+PsIooIcAvqZ8d0GE=
X-Google-Smtp-Source: APXvYqyib157qJbAdKu22V4xeUayYNuFbkSqnXIyp8pscUFX16u72XsL2YibcM9r6zYJnwu7wOjsnBVIvTlqLH2ggWU=
X-Received: by 2002:a05:6102:75c:: with SMTP id v28mr12390810vsg.146.1573584147562;
 Tue, 12 Nov 2019 10:42:27 -0800 (PST)
MIME-Version: 1.0
References: <20191111205558.2403-1-ynezz@true.cz>
In-Reply-To: <20191111205558.2403-1-ynezz@true.cz>
From: Thomas Albers <thomas.gameiro@googlemail.com>
Date: Tue, 12 Nov 2019 12:42:16 -0600
Message-ID: <CALYGOBXu_-wwZNyY3dA1OMZkx=hnhg4m0-M6MdPoXU_2yqFh7Q@mail.gmail.com>
Subject: Re: [PATCH] kernel-build: fix kernel_menuconfig breakage by forcing YACC
To: =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
Cc: openwrt-devel@lists.openwrt.org, Stijn Tintel <stijn@linux-ipv6.be>, 
	Eneas U de Queiroz <cotequeiroz@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_104231_729328_55C664FF 
X-CRM114-Status: UNSURE (   6.43  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [2607:f8b0:4864:20:0:0:0:e44 listed in]
                             [list.dnswl.org]
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
                             provider
                             (thomas.gameiro[at]googlemail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid

On Mon, 11 Nov 2019 at 14:56, Petr =C5=A0tetiar <ynezz@true.cz> wrote:
> Commit 965f341aa9fd ("build: fix host menu config targets using
> ncurses") has moved host's path with pkg-config (usually /usr/bin) at
> the first place in PATH variable, which is now causing issues with bison
> as BISON_PKGDATADIR points into STAGING_DIR_HOST, but the actual bison
> used is the one under host PATH

This fixes "make kernel_menuconfig" for 4.19 kernels.

Tested-by: Thomas Albers <thomas.gameiro@googlemail.com>


--===============7223284689361114325==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============7223284689361114325==--
