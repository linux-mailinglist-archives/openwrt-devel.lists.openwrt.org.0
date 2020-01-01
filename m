Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 82A2512DD59
	for <lists+openwrt-devel@lfdr.de>; Wed,  1 Jan 2020 03:11:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=drQJ7yTjJYDsFvaqj+sa/fgBHgyv9DmhH+0r58fjs/k=; b=TUEDDiHSx1u5dX
	8CB7Zu0V+DmRQOOFHQfyAssajZ9NxiOPCUdBTXnuQcLhPGMhEFNyRSVO91mfMx2SeCOUZFL0qxBFC
	/14WBWv1OWJQ2uSF7Z2+5qqe6YFylQkKliyeJ4tiqPHWzeclC7daenE36pRaVFq3tP806a9q0MlVT
	B3ee+lKiiHMGRygHj/EUrdkYC9NWMj6LgGNndl9ioEAW0BddKuBiIjqWB9Q7wnThApp1CVBLgo6YN
	XazS4lvDdLs3NTqasFCBA3qJwgsO8Yw53DfQddznez6/JCph05wOVo+eweA+OlVjOc8WDbshFMzgI
	b3DLADn+2ilE0AHwcCtw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imTUD-00086m-Cm; Wed, 01 Jan 2020 02:11:49 +0000
Received: from mail-oi1-x244.google.com ([2607:f8b0:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1imTU1-000862-RV
 for openwrt-devel@lists.openwrt.org; Wed, 01 Jan 2020 02:11:40 +0000
Received: by mail-oi1-x244.google.com with SMTP id l9so9615537oii.5
 for <openwrt-devel@lists.openwrt.org>; Tue, 31 Dec 2019 18:11:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=x40j3PUXo7RI0vJcWb2oM2P9wZ7RXQv7GlRJsuUVUWQ=;
 b=naRUXOFeLTvFB9hLwrPf3VHp2AVwXNSUbt0BE35vonwHOS9z6mMSN4WlKlOjg1kgVR
 3qCTStHqyxsJh0zemxZUU1sceGJB6Tn+GAubrYHWHMyigStZflzqj7RwEyRL7jpjs9qo
 HUQS8yi8AP05xn04YlDXrOnbeJE7aEEDQcK22kBl3dV0F8kTxylf5zhDaxy+LbCiK+dw
 UY1Wj1cHcuW7cG2UQzNw/Xq/Rlz8PkAlWMXjaSkwpw2qeSz/voCOxmiEbODzuGcpd/VF
 El5ZEGlL0yUeyqBeJbSbbjHmw+nZqPpNKD0ZIORCjcNHBGamh90ih8QVyfK7LRy7H3R2
 94sQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=x40j3PUXo7RI0vJcWb2oM2P9wZ7RXQv7GlRJsuUVUWQ=;
 b=ss06Yl7aYVZmKz12L3A48TkzehGzGQ+31rnylR42fZe3cmSqMTv3+Ytvbua3GzXlEj
 pGOVbkfSAE3ozrax4WiT81i1ljaeJbqiUQxtzvucYGZplJkkloKfycf5J9b9ABx3/XAm
 SHE4qm9BeR+4RXOO+eIp7tv0VHCwmjTmWLu7+rmAfwu2VQo+wL6XK7Fmq08LeGa71QK0
 T6oStTpua1ROmBo7E2KCUzYn113DJ1INobjJ1jnDdI/gc09GPIyTK9ILmYItx71/8sbi
 5Fbe2dLzsjvOKsUWA0SmJzddDmBBKEOWxC7VtBSGbAGC9mk4pRjHLWBnv4IyYAJtMnLc
 A4RA==
X-Gm-Message-State: APjAAAUceF8p5o2TY1QnZ945qguKBC19VZmU7XYaEceRjJ4RCtXJ4M45
 i9Ld2DBKFv3gknIq4Hh6ayJkMr0aArjUEsn99D3VSUFB
X-Google-Smtp-Source: APXvYqyRl+5wCv2JmYTGKhJW1l+Yl90CK9WyuMDkrRFq0cLoS47oTul2sbAkZF81Dnsc2Xd+TDl28G24lFB8873tlpk=
X-Received: by 2002:aca:72d0:: with SMTP id p199mr1732523oic.40.1577844696744; 
 Tue, 31 Dec 2019 18:11:36 -0800 (PST)
MIME-Version: 1.0
References: <20191230050756.3675-1-rosenp@gmail.com>
 <e01450cb-1ef1-dc8f-3d88-c7dd237fcbd1@gmx.de>
In-Reply-To: <e01450cb-1ef1-dc8f-3d88-c7dd237fcbd1@gmx.de>
From: Rosen Penev <rosenp@gmail.com>
Date: Tue, 31 Dec 2019 18:11:25 -0800
Message-ID: <CAKxU2N8+bXZr++sX_TPjvDCQd99SuJNvQxgzwzLLyC6j1MDYfQ@mail.gmail.com>
To: Hartmut Knaack <knaack.h@gmx.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191231_181137_891242_A2B89817 
X-CRM114-Status: GOOD (  12.59  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rosenp[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] [PATCHv2 1/4] scripts/gen_image_generic.sh:
 Replace -o with ||
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Tue, Dec 31, 2019 at 1:22 PM Hartmut Knaack <knaack.h@gmx.de> wrote:
>
> Rosen Penev schrieb am 30.12.2019 um 06:07:
> > -o is not well defined.
> >
> > Found with shellcheck.
> >
> > Signed-off-by: Rosen Penev <rosenp@gmail.com>
> > ---
> >  scripts/gen_image_generic.sh | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> >
> > diff --git a/scripts/gen_image_generic.sh b/scripts/gen_image_generic.sh
> > index 2d2fb120ce..1e35b1b349 100755
> > --- a/scripts/gen_image_generic.sh
> > +++ b/scripts/gen_image_generic.sh
> > @@ -1,10 +1,10 @@
> >  #!/usr/bin/env bash
> >  # Copyright (C) 2006-2012 OpenWrt.org
> >  set -e -x
> > -[ $# == 5 -o $# == 6 ] || {
> > +if [ $# -ge 5 ] || [ $# -le 6 ]; then
> >      echo "SYNTAX: $0 <file> <kernel size> <kernel directory> <rootfs size> <rootfs image> [<align>]"
> >      exit 1
> > -}
> > +fi
> >
> >  OUTPUT="$1"
> >  KERNELSIZE="$2"
> >
> Hi,
> this does not look right. You changed it from reporting a failure in case there
> was any other amount of options than 5 or 6 given, to reporting a failure if at
> least 5 or at most 6 options are provided (in other words: every amount).
Will resend.
>
> Regards,
>
> Hartmut

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
