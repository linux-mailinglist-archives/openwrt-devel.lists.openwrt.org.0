Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C42EEECDFE
	for <lists+openwrt-devel@lfdr.de>; Sat,  2 Nov 2019 11:34:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
	References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C0krWi+rkb8OF0cHwIsZIdpMJhtSyWhRU98+8ycHeaA=; b=SqrPK3+QAjtFCy
	rUcc8HEP+0/2t424dKI0R7OkI1w7Xnn4P9OBt2RxjhD2/7TLc5zDmPK04FSRt0R4PRZ2aJu8B76/o
	qZXSHvh82U3S40Yj27SMq8c+Ufz3CXC5VeKceqf3vy3HC7YuZaekksPr4sWbUtF2qkTIdmvZ1/U2f
	KGPYbHkz1EVS3ufhMvfhtG9B7Z4+J9kOe9zabtlTXAaspYuUvWf1++Rn696JCoZBO1oyVFzNBiiMP
	p2nr08s1tqAInjAl/AODLX1Uzm7JaHgcFDDMGP7/2ePGksVet8SFekjPok1cz5AAQvQ8veYZ9u8W7
	VIIwTYzbjw8i+XMXUlhw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQqjD-0008HV-45; Sat, 02 Nov 2019 10:33:55 +0000
Received: from mout.gmx.net ([212.227.17.22])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQqj7-0008Gm-3r
 for openwrt-devel@lists.openwrt.org; Sat, 02 Nov 2019 10:33:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1572690817;
 bh=4AicSuq6pomskzu9Pp/07xZXnyyCj+Rsp5FFtLkuFak=;
 h=X-UI-Sender-Class:Date:From:To:Cc:Subject:References:In-Reply-To;
 b=havAFkJ06g3BC59pwFsKTIGEHo7P0tkZwanrsGUlc9SHyc0WnaHVQCaBPsXmUAkON
 7BHdRU1o7SX5K20bU9wiKtZd8vNGs4Jyxism9MBRMAOnx2ezHHwksNL+UFeZ9nezn0
 jjSFpcRKu50Od8fyXIicDB4hRSN05Yoauju+cdZY=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from darth.lan ([62.14.66.60]) by mail.gmx.com (mrgmx104
 [212.227.17.168]) with ESMTPSA (Nemesis) id 1Mr9Bu-1he3ip06uE-00oGep; Sat, 02
 Nov 2019 11:33:37 +0100
Date: Sat, 2 Nov 2019 11:33:34 +0100
From: Sebastian Kemper <sebastian_ml@gmx.net>
To: Rosen Penev <rosenp@gmail.com>
Message-ID: <20191102103333.GA3077@darth.lan>
References: <20191101091829.GA16215@darth.lan>
 <fc2f29ad-d8ec-a28b-930e-7c2dc85d7906@wwsnet.net>
 <CAKxU2N8gc-=S6VbeOQ5pUWmXiZyB6JQsC5Hb4PHq_HTMGVzrVQ@mail.gmail.com>
 <20191101192107.GA3019@darth.lan>
 <CAKxU2N9ZPBgP+R8GzhXxx2dVezNEWi=i5+A2om2eFRS1iOpS0Q@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKxU2N9ZPBgP+R8GzhXxx2dVezNEWi=i5+A2om2eFRS1iOpS0Q@mail.gmail.com>
X-Provags-ID: V03:K1:XVwI5xQnF79DouNM2zexO8UNk0niVPKFckkQeuydpMTN8vQeA5k
 aZjWFYX4DLS1C7kpnJFlxarc6RQ4dGGXdWPy+eErrOomw6IsxlAvTo8Cx2ytVG7GNGi1eK6
 MsV/VkKM7d1yXuKBZIzV7tui2WQQZHZjY0sxLEnFp+U0jHVByzb5wCt5Cf8KXfvrbdOREmt
 /j/GWhC7grzMTFt3BzdsA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:KhnnFZ64rmw=:cONgjsv4eoSxjSKah60Qlx
 rRVLamNMuCqmXk4gkYaFaFskYyJp5/5KL1BLxwbiPWTa93R2V7Ba74pYjnGfJkysqUQEDzJ5b
 HzuxvY8/LUfsa6lC3c2v2cM6xMsHyP5Ek80EiKvL+NNyyCh3uxFay68AfCAeFu6Uf5EUTiAHA
 HA8kawnY0yh4JnKMo/0GW+Ddpr514AqwKxrsHE/BaE5Z9TTGjNeovkecaWadhGHnfK88Ka2MR
 ymdiweP7Ms1fGVR2wNJ8O9bLe+L77EwQ69joA3PRn7B9TEO5LLa1HYmCCS9sVmw6nl99CKZNn
 qC8UkCwtb49UYWe7eNnDXwsAdM8jg5namxSX4XbBvUWQUAvBDEvp0q3XwxUTdunME7/oyAVxG
 /JSFL8u5jNALZAlXFqDYKuxiG6c2oXU/i3gWx4yYP6Pz6ElORF9xxOLzWeC6KPnt/OsSCXRiI
 12g7tLaqQVv8W3Q6nUxTMBuWnkIDIJFPN5Ia5gNLyTjVJkZ8pF9QCH9ItFA0kNM3ff5yie8yL
 nj18U7Dyu4QD+GWXb2YATx26qhTnvX2YfZpIQ2z2XxMLOB/aqABF0GihfT1TdOgulxcnGwAel
 NdgQlkegazUCzeR/y5SzL2cwcPnz3S3VVNYPxYmxMKTxNPcpPmGr0fJ5Y/RK5KXAX5qX/122J
 GFD1PI0nIgAwVCdPvVHG/ASnySLKQ1CWXXO0Qhr9bX+agTMu5cPs4wA5sDGPc+fft4f4x+oOZ
 VnhDumTBG8LatgyBP8F7jYbq2x5H34EPSRd5bWSIkdLgf6nb7tbZacnmXXa5p8wSkyjZEIP95
 wMJBOTq8Am9yKeMPsOaJCH+u/r7PKi88R25dFgghbNVkJ+Z68co+TbKVaqCdcmxwzLis0ed2s
 28svYNL+kcJJtx/S6GGVonTkinD9nbSrb3UzoyqWNgIdPzFCPa6LXg/zZSL/g5x9Kqh/aMD2x
 8OMLy00SLfX2GkfxyASk0lWtKyhZP0VuOCwTXA1FD6Bb+MRKnIR3oxYbxbBwmOM9C5whtk7aJ
 mypqsaYG3kx5yuuokJk0adFEryksOkTJzTbpFx/AMMy8PQkQENfjUiTOxXdgJrqgKC+CVeXPA
 0RDRAAB7orM5AuYlt3JwYNMaOuWz7j90AKEyED/fR0HVfOa8Lt+b1ol8HWb7LMU4ZSUgJfSsO
 lGb6944g6nyrXBpAQRdLx9luQ4AX/NqbRi6lmSCIQ7q9bUqoyvrwKw5T+nHrtm1VQk7/GJ+jd
 iGw269h6bmPLRmX14QQxAwTEzYLP/snLx+ViFb03adsqoBA8pl97VEeykums=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191102_033349_450053_9DDF37E0 
X-CRM114-Status: GOOD (  10.98  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sebastian_ml[at]gmx.net)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.22 listed in list.dnswl.org]
Subject: Re: [OpenWrt-Devel] [PATCH] rules.mk: remove
 "$(STAGING_DIR)/include"
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
 Jo-Philipp Wich <jo@mein.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Fri, Nov 01, 2019 at 01:04:04PM -0700, Rosen Penev wrote:
> On Fri, Nov 1, 2019 at 12:21 PM Sebastian Kemper <sebastian_ml@gmx.net> wrote:
> >
> > On Fri, Nov 01, 2019 at 12:06:39PM -0700, Rosen Penev wrote:
> > > Would it also make sense to remove $(STAGING_DIR)/lib ? Locally, it
> > > seems libpam gets installed there (probably a bug).
> >
> > Quoting FHS 3.0 regarding /lib's purpose: "The /lib directory contains
> > those shared library images needed to boot the system and run the
> > commands in the root filesystem, ie. by binaries in /bin and /sbin."
> >
> > I think /lib should stay.
> OTOH, many modern distros just symlink everything to /usr.

Good morning Rosen,

I did not want to imply that OpenWrt follows FHS, I don't know about
that. I just think having /lib and /bin around makes much more sense
than /include.

Kind regards,
Seb

> Anyway,
>
> Acked-by: Rosen Penev <rosenp@gmail.com>
> >
> > Regards,
> > Seb
>
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
