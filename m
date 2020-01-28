Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 857C214BF2A
	for <lists+openwrt-devel@lfdr.de>; Tue, 28 Jan 2020 19:07:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=BGBcFSbkhfvi+n/xsMTZutYhaTDrNxPbDJMG9M39ztc=; b=gh23a8JkRsXJOLCO5k2L4mfcc
	VckAYvDFSlio1NlKVOL68SA4FA4K0L6iKLkWuh26TP/hFq42FHWJ+KPpcZlL8xnwA5cM94zbadWN1
	JuaZbHuzalc3p3lL08B4EwYi2rwRvtAtANgUzyC9x7Nu60ztmzsdxfxRcUKerwlV/oL9/jMY3A2Z7
	Nhydgu5Ox7mundr52aNEqkkNgPMKfNWpByAV8OgtU21jr9Y1ivX50lGYYDq2TuramO7yo33+HNgNX
	jpyuiUsFmyDDcXH247il4jzKdQRW/ySRqSTbO44WaBwn3fC59gaAxX42yaZx8qP4hoXvi0IA5zOKS
	AKgmFFZvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwVGe-0000MG-R4; Tue, 28 Jan 2020 18:07:16 +0000
Received: from mail-pg1-x529.google.com ([2607:f8b0:4864:20::529])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwVGX-0000LN-AZ
 for openwrt-devel@lists.openwrt.org; Tue, 28 Jan 2020 18:07:10 +0000
Received: by mail-pg1-x529.google.com with SMTP id x8so7401883pgk.8
 for <openwrt-devel@lists.openwrt.org>; Tue, 28 Jan 2020 10:07:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Wi3jvuVNpNZkiSijM2mligChY/4fflqsOw+BRo3xt04=;
 b=uGtaYG+f1X8NZVm05vgGCv2X+Dl5NCWg72C4G2iBBSOBrBv7ptWfSMaEJLjAik+nwJ
 yziNBfqhBQoc63zigF3ZMnDtvYKAr9F4U3EDX+AUBD7LRdRaJ6VbiPEy3aIzJk61eScv
 1E2rXEyWvg4DDrxe+0dvwaQ8pLmVYAIlVoIezsvZkisK2XwXClEGY5qdiZNL/NWS4vik
 TIYu9xH9U51CxLLXaHSwXSLysdOgtQd2NoNRmz9S20e9g/WvH7Qoj+qWfAYaBzNNowMe
 fAY2zouTo+jhg+IFTE70WvWk1GDd1p7vYlMrNusb9vSh0bquo+fHZIG71TE/ts4w7PZ/
 zWtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Wi3jvuVNpNZkiSijM2mligChY/4fflqsOw+BRo3xt04=;
 b=Mg2fZpP7fpIyqFn9XoTkOL8pA9qTu1v52HxYfrR8esTCv/6ocHCg6OWwOqEi51JTn5
 SMlvm7j3jv3nlCwWKvq8ZQK7cXaXgbYiqcRKLI+ciTSjGiFkhXlXGXKXHWnPGCAiQmHk
 /nE5ZiUVu+jFTTL5k6sNUFroYKau7fuwC6Tkm8siyGaYkTZzWz/t4F4cU2RfkB/KdP6a
 xmj9RKzZiAQ9ypVBuguHE6Sqyte3nyO5OVIrzCaFZpmDnJnXPyJVInQ4joItW89xvisG
 BX9mKAlI+tgeCKKSUGCn4T0bi6AIXEh2JmOguY2Lg6OTKaRwqXMRG0Q3YwJ7BZmxw++6
 Cb1Q==
X-Gm-Message-State: APjAAAVvf3cMt9RAvhY7rVEzxp2SBvpRxrVlXh3NrOfdOdwvdbRveXaE
 KgDJEY3/CHf8NS+4lLPt1kpPtvS1vAt2nzeYrZzjVA==
X-Google-Smtp-Source: APXvYqzbJsqWv4dWiAENMW9RrQEbGe/uwK2QT5gqD7tlGldCTyif4YPszLgn8p6iIYU8ydSmE7F5Ec3nFfjdeexyBpI=
X-Received: by 2002:a0c:aacb:: with SMTP id g11mr23973678qvb.108.1580234496810; 
 Tue, 28 Jan 2020 10:01:36 -0800 (PST)
MIME-Version: 1.0
References: <020101d563fa$a14539a0$e3cface0$@adrianschmutzler.de>
 <b46a0006-a510-0a59-600c-c31d94093caf@david-bauer.net>
 <003201d56565$33a9b580$9afd2080$@adrianschmutzler.de>
 <d1100196-b9cc-22cb-55d3-5dd6937a9b38@gmail.com>
 <015201d5d064$8f5d96c0$ae18c440$@adrianschmutzler.de>
 <81df4caf-8f04-74a1-dd1c-0beea3fca222@gmail.com>
 <02b701d5d540$8eee1ad0$acca5070$@adrianschmutzler.de>
 <fcbe4834-b61a-c3a6-99fa-77058773c59d@gmail.com>
 <00c001d5d5f2$62758ad0$2760a070$@adrianschmutzler.de>
In-Reply-To: <00c001d5d5f2$62758ad0$2760a070$@adrianschmutzler.de>
From: Jeffery To <jeffery.to@gmail.com>
Date: Wed, 29 Jan 2020 02:01:23 +0800
Message-ID: <CAJXyS=jbdMLn8wzoGuVxY9HBf+R+s29W0pofgDdaOHfSZ-Ut3w@mail.gmail.com>
To: Adrian Schmutzler <mail@adrianschmutzler.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200128_100709_366319_FE62B940 
X-CRM114-Status: GOOD (  10.11  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:529 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jeffery.to[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] Migration in ath79 for swapped ethernet
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
Cc: openwrt-devel@lists.openwrt.org, gch981213@gmail.com, ansuelsmth@gmail.com,
 Piotr Dymacz <pepe2k@gmail.com>, David Bauer <mail@david-bauer.net>
Content-Type: multipart/mixed; boundary="===============5501710232745107541=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============5501710232745107541==
Content-Type: multipart/alternative; boundary="000000000000d822e9059d37030a"

--000000000000d822e9059d37030a
Content-Type: text/plain; charset="UTF-8"

On Tue, Jan 28, 2020 at 11:48 PM Adrian Schmutzler <mail@adrianschmutzler.de>
wrote:

> I do not really see a viable/desirable option to support eth migration at
> the
> moment. And I'm not really a fan of adding lots of migration stuff which
> spoils
> the new ath79 target already, so after all I think I also do not _want_ to
> add
> eth migration either.
>

(I should first say that I don't know enough about the ar71xx-ath79
migration to know if this idea will work, but I don't recall seeing it
mentioned before.)

What if we add a migration package for 18.06 that ar71xx users can opt-in
and install, which (when the user initiates the process) will migrate their
config and perform an upgrade to 19.07 (ath79)? Their config would be
broken for 18.06 after the first step, but if the sysupgrade completes
successfully then their config works for 19.07 after the reboot. (Would be
nice if there is a way to roll back the config changes if the sysupgrade
fails.)

This is perhaps a variation of the transition image idea from Peter Geis,
but this would be less intrusive to the overall upgrade process (at least
for me).

Jeff

--000000000000d822e9059d37030a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Tue, Jan 28, 2020 at 11:48 PM Adrian S=
chmutzler &lt;<a href=3D"mailto:mail@adrianschmutzler.de">mail@adrianschmut=
zler.de</a>&gt; wrote:<br></div><div class=3D"gmail_quote"><blockquote clas=
s=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid r=
gb(204,204,204);padding-left:1ex">
I do not really see a viable/desirable option to support eth migration at t=
he<br>
moment. And I&#39;m not really a fan of adding lots of migration stuff whic=
h spoils<br>
the new ath79 target already, so after all I think I also do not _want_ to =
add<br>
eth migration either.<br></blockquote><div>=C2=A0</div><div>(I should first=
 say that I don&#39;t know enough about the ar71xx-ath79 migration to know =
if this idea will work, but I don&#39;t recall seeing it mentioned before.)=
</div><div><br></div><div>What if we add a migration package for 18.06 that=
 ar71xx users can opt-in and install, which (when the user initiates the pr=
ocess) will migrate their config and perform an upgrade to 19.07 (ath79)? T=
heir config would be broken for 18.06 after the first step, but if the sysu=
pgrade completes successfully then their config works for 19.07 after the r=
eboot. (Would be nice if there is a way to roll back the config changes if =
the sysupgrade fails.)</div><div><br></div><div>This is perhaps a variation=
 of the transition image idea from Peter Geis, but this would be less intru=
sive to the overall upgrade process (at least for me).</div><div><br></div>=
<div>Jeff</div><div><br></div></div></div>

--000000000000d822e9059d37030a--


--===============5501710232745107541==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============5501710232745107541==--

