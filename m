Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2812A12E0D8
	for <lists+openwrt-devel@lfdr.de>; Wed,  1 Jan 2020 23:44:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bUC/KESL+n9muIiGXT/7rNJz3KaF4x5/OGHFHUgSu6A=; b=fflKj4BsCf0h3r
	enxGi91i64IE4n0W1E6HKAomDN7DxwYX8BS5y3V15F4mbcXkJmmn2PnO4s0R2f5dsu1jxJZpgvAN7
	Ri5R3si+oT5/h925I0myrwRLo8ya+SUk1O600tUaZRBOKbUfKOY4spbMmdQ33YfJtzVtcx1etJONW
	Q4FEowQGusxqBkTliInkMaRfvrEz5L70JKtCmVZZ2Jen9zcOt1Y2F7i07bus4xMlPmHufbPPU5vDs
	qXLpiAd6ezTuYy3ENdOKz18xzfArNG3UzjT8YsEiaKq0KD63IIh5rPa+TFPyWLtn44/PusZi2/NZN
	qdCn9PN84TsFM7KO4y5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1immiz-0008Qk-GG; Wed, 01 Jan 2020 22:44:21 +0000
Received: from mail-ot1-x343.google.com ([2607:f8b0:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1immis-0008QO-Vu
 for openwrt-devel@lists.openwrt.org; Wed, 01 Jan 2020 22:44:16 +0000
Received: by mail-ot1-x343.google.com with SMTP id 77so54609250oty.6
 for <openwrt-devel@lists.openwrt.org>; Wed, 01 Jan 2020 14:44:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Coz5hQQzYAX/pMUxDrzjy8ChUvAYHnKfDCuJHXH1x5k=;
 b=SRoFmmbrTUb/mNIdziIU+Lpb4OAETkbwH5aRawvQQ/e0Jip4DDpn43nWhFTgFyASbd
 0f85CfE2THYjKAQG0JtHPQrW/KqxQs34bhCslIli5Ic7IESUfTN9WgcVHQ784t1hjMBY
 HUgoZwZsNf7K819bLpLM98JkKnFNPi1uOYcia9Y7somnYCFQqKj0x4l18LVTzJlIGMiX
 0gLJKf8IDgMePhu6xK/dp5UMhnzgyhoOBi9qp4N8TRfFIN/OSKqUzMUi7L9cZTmWBMw+
 n/ZO4FkMV8a/YEp9l0tEqIXgiw1jpSffn+vo+3wjQFx9/hiQn1cmMbuRWwA97sQoXhcm
 JP/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Coz5hQQzYAX/pMUxDrzjy8ChUvAYHnKfDCuJHXH1x5k=;
 b=sNBLmHCrsGyqmHvfD0yPyoZ6m59Gvmdq3d1dkUZvafmmn8v97MnU/S0NBJzsvYvblC
 73hbkiS7hSSKqs1qq/6fONPCY+Ibcct9SQ1o1Jsvp6gD3l2gKObLB6srbszhNFUEmWLx
 6bRYw2PbMYJa6q1YQyhW7bf4PfnGfh/RP+mn9bY3OKrpohCx/l2KmkELUEXjqLAO1ikv
 nE6MidVgTIPtEbBmNZcPuqBL2v6dQMEVwO3q9k/3y7/C/GW2Fq+0RnXRsRdY5viCvPoC
 z4a0nO9hLxv93/VwHl3zatl0MCUM8EzpyjqUjNd7h8ZLHZM5V30bEtUZfNDlil1E7qI6
 WpLw==
X-Gm-Message-State: APjAAAWN2odui2cfZXwn4virUypDLGAj7DcQxpTOTRkGG9cB74xv+NVo
 dB6D0V4eJp6arH05+hMWRronhS0hcSFDelSEQMM=
X-Google-Smtp-Source: APXvYqx6QhV4wYeKEZjMrJ3mQlnZv1Q6ouZEvsKf2QMSXESZ5WPRDfQ/QyDRsJQI24VHN3Wq/oW7+D0zFnq+kmD0hrE=
X-Received: by 2002:a9d:6b06:: with SMTP id g6mr79891183otp.93.1577918654043; 
 Wed, 01 Jan 2020 14:44:14 -0800 (PST)
MIME-Version: 1.0
References: <20200101020822.21784-1-rosenp@gmail.com>
 <00be385c-a36b-b3ac-db91-a4936de51538@gmx.de>
In-Reply-To: <00be385c-a36b-b3ac-db91-a4936de51538@gmx.de>
From: Rosen Penev <rosenp@gmail.com>
Date: Wed, 1 Jan 2020 14:44:03 -0800
Message-ID: <CAKxU2N91KmJe5+FNyeuaqFFx8WVoF_YZD8OX0tt2Nbhjnp4GhQ@mail.gmail.com>
To: Hartmut Knaack <knaack.h@gmx.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200101_144415_026621_61574D82 
X-CRM114-Status: GOOD (  15.21  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rosenp[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH 1/2] wireguard.sh: Batch file writes
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

On Wed, Jan 1, 2020 at 3:31 AM Hartmut Knaack <knaack.h@gmx.de> wrote:
>
> Rosen Penev schrieb am 01.01.2020 um 03:08:
> > Speeds up config generation.
> >
> > Signed-off-by: Rosen Penev <rosenp@gmail.com>
> > ---
> >  .../utils/wireguard-tools/files/wireguard.sh  | 32 ++++++++-----------
> >  1 file changed, 14 insertions(+), 18 deletions(-)
> >
> > diff --git a/package/network/utils/wireguard-tools/files/wireguard.sh b/package/network/utils/wireguard-tools/files/wireguard.sh
> > index 4c811c6ba9..1e424e7959 100644
> > --- a/package/network/utils/wireguard-tools/files/wireguard.sh
> > +++ b/package/network/utils/wireguard-tools/files/wireguard.sh
> > @@ -42,13 +42,12 @@ proto_wireguard_setup_peer() {
> >       config_get endpoint_port "${peer_config}" "endpoint_port"
> >       config_get persistent_keepalive "${peer_config}" "persistent_keepalive"
> >
> > -     echo "[Peer]" >> "${wg_cfg}"
> > -     echo "PublicKey=${public_key}" >> "${wg_cfg}"
> > -     if [ "${preshared_key}" ]; then
> > -             echo "PresharedKey=${preshared_key}" >> "${wg_cfg}"
> > -     fi
> > +     {
> > +     echo "[Peer]"
> > +     echo "PublicKey=${public_key}"
> > +     [ "${preshared_key}" ] && echo "PresharedKey=${preshared_key}"
> >       for allowed_ip in $allowed_ips; do
> > -             echo "AllowedIPs=${allowed_ip}" >> "${wg_cfg}"
> > +             echo "AllowedIPs=${allowed_ip}"
> >       done
> >       if [ "${endpoint_host}" ]; then
> >               case "${endpoint_host}" in
> > @@ -64,11 +63,10 @@ proto_wireguard_setup_peer() {
> >               else
> >                       endpoint="${endpoint}:51820"
> >               fi
> > -             echo "Endpoint=${endpoint}" >> "${wg_cfg}"
> > -     fi
> > -     if [ "${persistent_keepalive}" ]; then
> > -             echo "PersistentKeepalive=${persistent_keepalive}" >> "${wg_cfg}"
> > +             echo "Endpoint=${endpoint}"
> >       fi
> > +     [ "${persistent_keepalive}" ] && echo "PersistentKeepalive=${persistent_keepalive}"
> > +     } >> "${wg_cfg}"
> >
>
> Hi,
> I would prefer to have the above code block indented, as well.
Sure. I did so initially as I felt it was too indented.
>
> >       if [ ${route_allowed_ips} -ne 0 ]; then
> >               for allowed_ip in ${allowed_ips}; do
> > @@ -119,14 +117,12 @@ proto_wireguard_setup() {
> >
> >       umask 077
> >       mkdir -p "${wg_dir}"
> > -     echo "[Interface]" > "${wg_cfg}"
> > -     echo "PrivateKey=${private_key}" >> "${wg_cfg}"
> > -     if [ "${listen_port}" ]; then
> > -             echo "ListenPort=${listen_port}" >> "${wg_cfg}"
> > -     fi
> > -     if [ "${fwmark}" ]; then
> > -             echo "FwMark=${fwmark}" >> "${wg_cfg}"
> > -     fi
> > +     {
> > +             echo "[Interface]"
> > +             echo "PrivateKey=${private_key}"
> > +             [ "${listen_port}" ] && echo "ListenPort=${listen_port}"
> > +             [ "${fwmark}" ] && echo "FwMark=${fwmark}"
> > +     } > "${wg_cfg}"
> >       config_foreach proto_wireguard_setup_peer "wireguard_${config}"
> >
> >       # apply configuration file
> >
>

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
