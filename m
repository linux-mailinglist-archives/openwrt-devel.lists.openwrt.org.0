Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 67B321CD2B8
	for <lists+openwrt-devel@lfdr.de>; Mon, 11 May 2020 09:37:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cNU5ch7MCbUPC3kwl2+/W35kgzl01NmC1nStmpDCicA=; b=G+sf0FePv2Njpa
	mXSG/RC/16Act4InVcT1n4QqmK4Hni7seUT56HFtXayyD0xfV0VTHhIxfit24lQ+BlcijHM9o6O1M
	uK53H3zfce4BaXJCB2vTVG5bmAEiOFVMTJ+aWxwhbsunP1eRPNrfipPU0eWSb48tfGaZaBAuHS6X/
	1zGH+HG7cXEp//OO+SlaIvs6JhS1okdbeMPNzlZpTM+64PXOYj4MyneqrrwiaK+kRpJY697h++qHk
	DoAg+QLn/SH2CguvLRBTCElpBGJnIuYC3myD6IjTj/s0HEUz6tbNo8iDoHCvhh62Mq8bpIm4zcgd+
	kBctAK7tDkEjXFxLqRmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jY2zn-0002Pg-AP; Mon, 11 May 2020 07:37:03 +0000
Received: from mail-il1-x12d.google.com ([2607:f8b0:4864:20::12d])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jY2ze-0002P7-U3
 for openwrt-devel@lists.openwrt.org; Mon, 11 May 2020 07:36:56 +0000
Received: by mail-il1-x12d.google.com with SMTP id b71so655473ilg.8
 for <openwrt-devel@lists.openwrt.org>; Mon, 11 May 2020 00:36:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=aleksander-es.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=JAbiNCwijV9dE2zreKnEMSd8SaZlsoamijmKSYP5nB8=;
 b=WiCZNsq83KOUcPXXVa7tUeS5zJnuGnXFYpHa6u0TQfxiz3VfRLTWe7PuQqpv9SFdlF
 OShlZ+Ca5BpTNzz1g/ibfQU/4Xo844c4okAudb3TBFkHDnGAYgahm+10P6AxKYvXEt6Y
 hZ4uMNhq1jdiE2bHPbBugL7OH1D+gyIPXTgQDciLXvyb6XSYokdKp5RgwwKctAAaTFsM
 1CMLN7x4pDx/SAvdFsvu/4V9bDZ+LBzzKaZH4qkOjYi2jcyAteQclrUP+Ht/yqD6b2kp
 Yu+KD/KPDVUEZRKg0Awt5fdpSkN3SFE+Nv3d2/wG11FzMLSLH9rOVZlanOSSSGPOP3dN
 ItQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=JAbiNCwijV9dE2zreKnEMSd8SaZlsoamijmKSYP5nB8=;
 b=XVBd5kTPcEuf6PDwyd4hooMCuPxBj+aL9N+p05t5XxVb6D1hCvi+WsCO0lI5xXDyAz
 cWsxd0ZDqAnaGXPtHS7sIs6oeQvx5xRXa7toSQVszZuGy0JdvMjpGFiJEvzFua8Q+nFa
 AsQP4ND+s1m+rFPf6lmx8QplcHMehVWytUQteK/9XwkB2kxkEHcndiUWDdzPRYeq4vPl
 4+YnOKx2JCvSH/ez2vUn/nDns/CmgePvc8JVv80GMYRo4Uekus4JyzrE9ygbnRhvRUWL
 dT9zRJd0Uz6rxYPaOXnvO7zGvka7/FNEGYZAG3Rr78YcGOfyji0V1mMEwiu/GrxLShCo
 hVxA==
X-Gm-Message-State: AGi0Pubsw9IS7nLYcsQhAcD8v0PAoz8uiMEVVoRW8z6mlqRMtdpB9j9r
 QDZAEvCqBEMnF+MrNxIbFsiIoFNIFyW3r7idySO1BQ==
X-Google-Smtp-Source: APiQypK0qZNPiQWwQoW7TruLymRgKvPX29OhkEGAsA8Mep8Z0ZajTrpe0nPb/nLMdOj/24c138c/8f2NXYmnr8DK2o8=
X-Received: by 2002:a92:4012:: with SMTP id n18mr9454448ila.151.1589182613628; 
 Mon, 11 May 2020 00:36:53 -0700 (PDT)
MIME-Version: 1.0
References: <CALYKT1hk3-kyD5xifS1QGYE5dy5rR9Jn0HjojxCbe5yDcjAxkw@mail.gmail.com>
 <CAJQUmm6yC5n32pw1PfVX_xJmzSgy0svZQZQRrA0Uyf2GSj6nNA@mail.gmail.com>
 <87mu6ur24u.fsf@miraculix.mork.no>
 <CALYKT1j=15WNV+H54qX=zT8K93GoCvs5h-VUzVvRBmzAGtfrKA@mail.gmail.com>
 <CAAP7ucKtq2tiJRVMFjr5zx=NCG6=-507wyNhP18hm0Y0gAkj8Q@mail.gmail.com>
 <CALYKT1jgbSGaU++m4jbfZfnP=ecivEQ2tFRb6qpd26TZWmjJzg@mail.gmail.com>
 <CALYKT1ibXO1x96TZWxcEhmtTWwPPPFN+WPRwpYfLfULNt_edGg@mail.gmail.com>
 <CAAP7uc+mTnEbE8HSNghweu3uUYG97RrttrP4UuawokA6a1QYvg@mail.gmail.com>
 <CALYKT1jGSUNb1gPKczz8nVY2J84dBZFRY586P+OSnLNTj4Fxkg@mail.gmail.com>
 <CAAP7ucJ5qwJ+4cy_v4sEnULdD9g-D8w=5Ze7d8kubK9RZFLiQQ@mail.gmail.com>
 <CALYKT1hT=0G6ip3__-pttHVr-7Vc1rOUFBnsZFc9jCnx_uu4Wg@mail.gmail.com>
 <CALYKT1h8FF5jQsS7ereCS71rT4aywZrwr+ZjNHSPghQgqx+R8g@mail.gmail.com>
In-Reply-To: <CALYKT1h8FF5jQsS7ereCS71rT4aywZrwr+ZjNHSPghQgqx+R8g@mail.gmail.com>
From: Aleksander Morgado <aleksander@aleksander.es>
Date: Mon, 11 May 2020 09:36:42 +0200
Message-ID: <CAAP7ucKeVq3N0RJhez45o7g0jkRenPvDUVazRy2CCm3cK64xQg@mail.gmail.com>
To: Jeonghum Joh <oosaprogrammer@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_003654_966352_1E2909D7 
X-CRM114-Status: UNSURE (   5.74  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:12d listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [ModemManager] How can I make ModemManager work
 right?
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>,
 =?UTF-8?Q?Bj=C3=B8rn_Mork?= <bjorn@mork.no>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hey!

>
> I found one :
> https://github.com/lkundrak/openwrt-network-manager
>
> I wonder if this is righty and worthy to try.
> I am now trying porting it anyway.
>

I would first write to lkundrak (who is one of the NetworkManager
maintainers) to ask whether this port is usable or not.

-- 
Aleksander
https://aleksander.es

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
