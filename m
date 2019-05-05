Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE18F142CA
	for <lists+openwrt-devel@lfdr.de>; Mon,  6 May 2019 00:24:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:References:In-Reply-To:Message-Id:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=UKjNAixEeSYwq5i8LtyF7BOzui/8rGr0gvaDEKOBiBI=; b=HwnwhAFAly1yMqnUH/t3g3VA8
	nVs0Y0TicoM906H64vIHFHrb0w8Dtk+Cl2q1e7sRkGUDJ49eywOSB68jKCpxd/oF+rvrOI+O0DZ0H
	dIn11tahgk2+D7KnMxZXklRERMbJoHMB+qSrrwOJHwk+CuMzIf/ynXhx9durqWzlxJNV6wDFg85IW
	EPdtLzOmsrLDUCaCVljRoVoOMkGisbo146EDe3gjm4f0c2wHVwptk7WGM6lXTa30akxfxF/iZCj4M
	McrwlEnuw+BPN9cB+r6tVGJd0SjbTeQEn9WRY0iW16S7Ts1HtAxnuFd/yVS8KMq6cRgOZqw4LD+Uf
	cdh2WR71g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNPYe-0000QR-Ep; Sun, 05 May 2019 22:24:32 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNPYW-0000Op-Dp
 for openwrt-devel@lists.openwrt.org; Sun, 05 May 2019 22:24:26 +0000
Received: by mail-pg1-x542.google.com with SMTP id i21so5459745pgi.12
 for <openwrt-devel@lists.openwrt.org>; Sun, 05 May 2019 15:24:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:subject:to:cc:message-id:in-reply-to:references
 :mime-version; bh=DGbRD2buWapXzSLdZIW4NLJ+znqtmGPPdUwFSNKaRlo=;
 b=nFPDjL+E8zasPW4Gms8msYNm37sCLce1WarpTYR4KlnRJ3YjPN6bob74YqQje8wjCp
 ZgOBwyEeS48cy7baGw3RiJU8bYx5hnd8RiYiZvdRNchQNOn6//QPEgKrUqDPG3TrfeLK
 Cfdr+whoYCfM7vFL/prQubvKdNL3IKUy+LxqyGSsy710QBgEKwNRr8Aj3jYiPfg4w7IU
 yTaGBWhSxqtO/EuG0mkyW26xsJvcSRfy0suV5Oc0b1n1Z0LocuhRPxp/2FvjNACNk3Rl
 z4OtfmcaHUYuEgOXXgMg+UIo6vDqI0HAUMHRRmoTJOo7IEKPPY5zHAWCluPh5opvts5b
 qymw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:subject:to:cc:message-id:in-reply-to
 :references:mime-version;
 bh=DGbRD2buWapXzSLdZIW4NLJ+znqtmGPPdUwFSNKaRlo=;
 b=mxRNC/sBmRHy0ZkLPCLZ1Sc+rnGqOTmVSCgrRwLrp9hi32dY2Iy4imw8ZAGjQCyjez
 sRgkC5gHKLK2bq/DZ0bHU7EBUIi+GOweIw2nVvm794vSz8qBPNc6g+4f0V8Hjgi7gjW7
 HugOExd0XjZnLV9Ljb7PZXX2cfx7cXA7aSBadT3f2Zm/8FX5JzCs76ezzmhNZHn5VSEx
 wXVkPlaLKnYOUFiFNEEFdIgftW19wDv/RPW6hoH85y/fIYtokJVYRJoolJ4+s5yoskMV
 q5/IqTdmqgPKl48SXLK3VtX7Y5AIb/L0760mR+lqMMJGsF5l67uY5yOgHOzj9XGSGy4q
 sy8A==
X-Gm-Message-State: APjAAAWMvMWOpjto7zclf99S01fsWOVKxOs34TQlxpNrOVgCgI1ZyVwx
 uchjpoq+Wc8RbT6c+KZQcHkx7DFfsHA=
X-Google-Smtp-Source: APXvYqyDB1MQdHe2dV7NXDips5HNLKZKPxnIbtUb04NXMWwkG6MKTs+LXocv2XonIrnOAEbvSDbS6Q==
X-Received: by 2002:a63:6a4a:: with SMTP id f71mr24066279pgc.44.1557095063446; 
 Sun, 05 May 2019 15:24:23 -0700 (PDT)
Received: from [192.168.0.240] (76-14-106-140.rk.wavecable.com.
 [76.14.106.140])
 by smtp.gmail.com with ESMTPSA id k191sm16025250pfc.151.2019.05.05.15.24.22
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 05 May 2019 15:24:22 -0700 (PDT)
Date: Sun, 05 May 2019 15:24:19 -0700
From: Rosen Penev <rosenp@gmail.com>
To: Petr =?iso-8859-2?q?=A9tetiar?= <ynezz@true.cz>
Message-Id: <1557095059.1591.0@smtp.gmail.com>
In-Reply-To: <CAKxU2N_kouAC4fhpnw9J+uSeZVE=QdrDcnTmQ45Xk7-aK3iVqA@mail.gmail.com>
References: <20190501170810.5230-1-rosenp@gmail.com>
 <20190503115015.GA71477@meh.true.cz>
 <CAKxU2N_kouAC4fhpnw9J+uSeZVE=QdrDcnTmQ45Xk7-aK3iVqA@mail.gmail.com>
X-Mailer: pantheon-mail/1.0.8
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190505_152424_470175_1DE4B1CE 
X-CRM114-Status: UNSURE (   5.82  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rosenp[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH] nftables: Fix compilation with uClibc-ng
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.21
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
Content-Type: multipart/mixed; boundary="===============5187423884025207805=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============5187423884025207805==
Content-Type: multipart/alternative; boundary="=-/sCRp7j6R3YKPBmBJvhZ"

--=-/sCRp7j6R3YKPBmBJvhZ
Content-Type: text/plain; charset=iso-8859-2; format=flowed
Content-Transfer-Encoding: quoted-printable


On Fri, May 3, 2019 at 11:49 AM, Rosen Penev <rosenp@gmail.com> wrote:
> On Fri, May 3, 2019 at 4:50 AM Petr =A9tetiar <ynezz@true.cz> wrote:
>>=20
>>  Rosen Penev <rosenp@gmail.com> [2019-05-01 10:08:10]:
>>=20
>>  Hi,
>>=20
>>  > Missing header for va_list.
>>=20
>>  shouldn't this go through upstream first? Thanks.
> Sent
This was applied upstream.
>=20
>>=20
>>  -- ynezz



=

--=-/sCRp7j6R3YKPBmBJvhZ
Content-Type: text/html; charset=iso-8859-2
Content-Transfer-Encoding: quoted-printable

<br>

On Fri, May 3, 2019 at 11:49 AM, Rosen Penev &lt;rosenp@gmail.com&gt; wrote=
:<br>
<blockquote type=3D"cite"><div class=3D"plaintext" style=3D"white-space: pr=
e-wrap;">On Fri, May 3, 2019 at 4:50 AM Petr =A9tetiar &lt;<a href=3D"mailt=
o:ynezz@true.cz">ynezz@true.cz</a>&gt; wrote:
<blockquote>
 Rosen Penev &lt;<a href=3D"mailto:rosenp@gmail.com">rosenp@gmail.com</a>&g=
t; [2019-05-01 10:08:10]:

 Hi,

 &gt; Missing header for va_list.

 shouldn't this go through upstream first? Thanks.
</blockquote>Sent</div></blockquote>This was applied upstream.<br><blockquo=
te type=3D"cite"><div class=3D"plaintext" style=3D"white-space: pre-wrap;">
<blockquote>
 -- ynezz
</blockquote></div></blockquote><br><br>
=

--=-/sCRp7j6R3YKPBmBJvhZ--



--===============5187423884025207805==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============5187423884025207805==--


