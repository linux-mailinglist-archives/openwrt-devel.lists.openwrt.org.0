Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A7CF919E714
	for <lists+openwrt-devel@lfdr.de>; Sat,  4 Apr 2020 20:34:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=wxvN6I4V0WgO5adZaodQsxXNr0/pZuw2eJt5CLTlmaU=; b=Mi4F9Yuh7dynh/dB2N6khbEqD
	KNH7COTSdyWwanfrfshsKM4Hlh07wTIrlaWEf9AlFHPLtt73TMbVJwx7pe8gefmXPZ2YY61/qNsh2
	wTD2vlLBoeh+PxV/HtGUIbOm3AQBwZ4bnnUyHKfO0xUbbG0dMvEYyxRGdmB4U1iBkVi/Kl/WDCAMD
	8xdjWKPEROd8eEGjnuYvrxfMdf22eIr69URaqnNmy8Rath5NhP1Q1/fxIeomqm5YWB3zDnt1uLHvE
	oJlOvwHcE2vm/ZKIlP2CEPBbUpgwF3unN05XjhQA0WRYI9QtG1oOhYT1W129qDsKTeJeVQyIzuhQp
	ist9EhrWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKncQ-0007Dx-Gy; Sat, 04 Apr 2020 18:34:10 +0000
Received: from mail-qt1-x843.google.com ([2607:f8b0:4864:20::843])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKncJ-0007DP-RV
 for openwrt-devel@lists.openwrt.org; Sat, 04 Apr 2020 18:34:05 +0000
Received: by mail-qt1-x843.google.com with SMTP id z24so9434993qtu.4
 for <openwrt-devel@lists.openwrt.org>; Sat, 04 Apr 2020 11:34:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=OwR9jEN282TYmhYl+BOdRbFJL48307RFy8kp0kKZa2g=;
 b=Qy6PXu98kfbbuxlWG2p+G9IrkS2nRKgfLhH/KjCVo20bNjTxLC1AmLR1T19Gx5M9Pa
 +FOz7ljwIImOmFL4uLGvFsokq4jChTMOjUWQdRUHcqLMvLL5b7rP5bmK9tKlGIdTcPow
 E9wLam6meD3OKJ8hSdEl7aEmY7QDCO3d+062Sb1weZDBMbjlRq8SiX4BsDNgmvl2T38f
 FvEKFOexed7YL6oTkUnwkJJftV5VRoPlUHwDPQb6B5hGh6TDvERIf1Bgod0Ogmt30GXC
 iKELpVbXPR8BDbPo8wRgf2UW92JMBS3HzscjEY1/b6xzVc++bxqsC0tZSwpc+kgZoACi
 D3Yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=OwR9jEN282TYmhYl+BOdRbFJL48307RFy8kp0kKZa2g=;
 b=NWMomReaBB1exfaQY5SkeMHRrdSBmSlGXCjql7t3AUM8pd0Y2bdJxAaqkBLtGOCrKp
 A2DeKAxfYKPRax1JZcL+BRJsBlRB779WWyoRtFwW+L1MKyRnMEyd1BUzzDm9kjqM3lxR
 fCJWgZY/IUYcybmZbdBuSJF2poWD1ReOhD0Pp926r0iPYGEDDQifOl0zBmI5VLgzaACD
 kpaISDcTYpAGW2t1VCuQ0Gghefv13Aq32AswH2IOgEM4mL5H8uQEkbDahPWpm/RKhPtD
 3NV9fm0nwn2aXtrTDEzTHMlBc+tEpX6l43PmbKCpATzvGPV/+1D/WlnNT5lxOJ1of6Kz
 TTkQ==
X-Gm-Message-State: AGi0PuaXV5bZYu8S/7uszk7n7+nXh/Dju6+PpApOeAfCSZ2hFXXczSeB
 gpg7l667Kz8g1sShsj5LxlQkx+fSgW/q+zHYyP8=
X-Google-Smtp-Source: APiQypKBn1RJ4gSwAr6JqmFqgNcQiid5hL4xUtTuIfB8RztLPcHs31hxlmAS/qw1sg96dgMtA4vu2vrRE7dj0MrpE9I=
X-Received: by 2002:ac8:33d2:: with SMTP id d18mr13300507qtb.325.1586025241782; 
 Sat, 04 Apr 2020 11:34:01 -0700 (PDT)
MIME-Version: 1.0
References: <20200327123608.198650-1-peter.stadler@student.uibk.ac.at>
In-Reply-To: <20200327123608.198650-1-peter.stadler@student.uibk.ac.at>
From: Hans Dedecker <dedeckeh@gmail.com>
Date: Sat, 4 Apr 2020 20:33:50 +0200
Message-ID: <CAJLcKsH=8d=7DXQ8LzM6LV_+eBuRNzGUzG2_urrFF+E-Q2xA3g@mail.gmail.com>
To: Peter Stadler <peter.stadler@student.uibk.ac.at>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200404_113403_981688_F1957551 
X-CRM114-Status: GOOD (  13.36  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:843 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [dedeckeh[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: Re: [OpenWrt-Devel] [PATCH] netifd: fix 14_migrate-dhcp-release
 script
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
Cc: openwrt-devel <openwrt-devel@lists.openwrt.org>
Content-Type: multipart/mixed; boundary="===============5004482619805151681=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============5004482619805151681==
Content-Type: multipart/alternative; boundary="00000000000024304905a27b477f"

--00000000000024304905a27b477f
Content-Type: text/plain; charset="UTF-8"

Hi,

On Fri, Mar 27, 2020 at 1:36 PM Peter Stadler <
peter.stadler@student.uibk.ac.at> wrote:

> prepend 'uci' to 'commit network'
>
Can you explain why the prepend of 'uci' is required ?
In other words what is not working as I fail to spot the issue

Hans

>
> Signed-off-by: Peter Stadler <peter.stadler@student.uibk.ac.at>
> ---
>  .../netifd/files/etc/uci-defaults/14_migrate-dhcp-release       | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git
> a/package/network/config/netifd/files/etc/uci-defaults/14_migrate-dhcp-release
> b/package/network/config/netifd/files/etc/uci-defaults/14_migrate-dhcp-release
> index 651c437cb2..f1b384eecc 100644
> ---
> a/package/network/config/netifd/files/etc/uci-defaults/14_migrate-dhcp-release
> +++
> b/package/network/config/netifd/files/etc/uci-defaults/14_migrate-dhcp-release
> @@ -18,6 +18,6 @@ migrate_release() {
>
>  config_load network
>  config_foreach migrate_release interface
> -commit network
> +uci commit network
>
>  exit 0
> --
> 2.24.1
>
>
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel
>

--00000000000024304905a27b477f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hi,<br></div><br><div class=3D"gmail_quot=
e"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Mar 27, 2020 at 1:36 PM Pe=
ter Stadler &lt;<a href=3D"mailto:peter.stadler@student.uibk.ac.at" target=
=3D"_blank">peter.stadler@student.uibk.ac.at</a>&gt; wrote:<br></div><block=
quote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1=
px solid rgb(204,204,204);padding-left:1ex">prepend &#39;uci&#39; to &#39;c=
ommit network&#39;<br></blockquote><div>Can you explain why the prepend of =
&#39;uci&#39; is required ?<br></div><div>In other words what is not workin=
g as I fail to spot the issue</div><div><br></div><div>Hans<br></div><block=
quote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1=
px solid rgb(204,204,204);padding-left:1ex">
<br>
Signed-off-by: Peter Stadler &lt;<a href=3D"mailto:peter.stadler@student.ui=
bk.ac.at" target=3D"_blank">peter.stadler@student.uibk.ac.at</a>&gt;<br>
---<br>
=C2=A0.../netifd/files/etc/uci-defaults/14_migrate-dhcp-release=C2=A0 =C2=
=A0 =C2=A0 =C2=A0| 2 +-<br>
=C2=A01 file changed, 1 insertion(+), 1 deletion(-)<br>
<br>
diff --git a/package/network/config/netifd/files/etc/uci-defaults/14_migrat=
e-dhcp-release b/package/network/config/netifd/files/etc/uci-defaults/14_mi=
grate-dhcp-release<br>
index 651c437cb2..f1b384eecc 100644<br>
--- a/package/network/config/netifd/files/etc/uci-defaults/14_migrate-dhcp-=
release<br>
+++ b/package/network/config/netifd/files/etc/uci-defaults/14_migrate-dhcp-=
release<br>
@@ -18,6 +18,6 @@ migrate_release() {<br>
<br>
=C2=A0config_load network<br>
=C2=A0config_foreach migrate_release interface<br>
-commit network<br>
+uci commit network<br>
<br>
=C2=A0exit 0<br>
-- <br>
2.24.1<br>
<br>
<br>
_______________________________________________<br>
openwrt-devel mailing list<br>
<a href=3D"mailto:openwrt-devel@lists.openwrt.org" target=3D"_blank">openwr=
t-devel@lists.openwrt.org</a><br>
<a href=3D"https://lists.openwrt.org/mailman/listinfo/openwrt-devel" rel=3D=
"noreferrer" target=3D"_blank">https://lists.openwrt.org/mailman/listinfo/o=
penwrt-devel</a><br>
</blockquote></div></div>

--00000000000024304905a27b477f--


--===============5004482619805151681==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============5004482619805151681==--

