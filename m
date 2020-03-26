Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DD021939E1
	for <lists+openwrt-devel@lfdr.de>; Thu, 26 Mar 2020 08:55:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:References:To:In-Reply-To:Date:Mime-Version:Message-Id:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=UeoiKViuukJ3DgiYs2xVC7Wpx+BKmPIgxq+U2izagHA=; b=kZlgM9LeV5w4a/a8L2EKRvLLb
	Lt95VBckwS9kl3QBMPA7OjJOWxa2Bc6mSN6yN4AfkbJIq6XD8L640baE6a5RCUVomytaCmcQvhsyd
	oWcTcl7aQx0tqj+iXCFkLtIdXAgf6jE4RAuMQuD+IZO/HZba3xwQKCmxIztaKfD1U3hjtYlPAMj6r
	hsAV3T+iRZM3GK7iS/BZVeKCF1a5hZFOYznNeYbPoM4IcMINmdaGopzI3d/QyfnuBVHJEd5t+VgK0
	gOutmeg9k1LXB3QULdx+mX2juhYe/fCt6isOxzLZHJB2MOWq5n5pF8AGEGioZWDBMxTCNWZ+ucS+t
	J+wl6jPag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHNMU-00036s-4o; Thu, 26 Mar 2020 07:55:34 +0000
Received: from mail-wr1-x434.google.com ([2a00:1450:4864:20::434])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHNMI-00036F-T0
 for openwrt-devel@lists.openwrt.org; Thu, 26 Mar 2020 07:55:25 +0000
Received: by mail-wr1-x434.google.com with SMTP id p10so6504242wrt.6
 for <openwrt-devel@lists.openwrt.org>; Thu, 26 Mar 2020 00:55:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:message-id:mime-version:subject:date:in-reply-to:cc:to
 :references; bh=2N+9o5bnncR8MrBIyFUyhxSo/vJ5tP0yiHxMom04kKY=;
 b=IJwZ5wfU5jk6D0nct5/xWftRWlq7ttLBOdbgw3LhMhGPXwtkT2YZkbXWbdQrxZYhQN
 Y98wZvGsRoMUfQFl6pjYMfM+TYS+O5m9iISQXg9cgpLIM4lG1feLTy2X8RwiXMIuqpi/
 q3BH7Zc9LzprLF0ofk1WdweG5PH/DurVLMHF86lG/rAISFTescj5SS6B4MuQqZK+39DX
 ViRPOGs1A4fIATNDLAS+0KugkeSPCcKZ8AdOUrf5XOif6utJtAe0grl145MkltdIaSWS
 UL2btXT8kD7+xDekpk0As7ntXJzExN2liVG0B3jMPfaH3oiQgiUey88I48O+zfNsjuLW
 QUSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:message-id:mime-version:subject:date
 :in-reply-to:cc:to:references;
 bh=2N+9o5bnncR8MrBIyFUyhxSo/vJ5tP0yiHxMom04kKY=;
 b=Bfa9VCmL9W5PQf+shuX4/cXdUQhHTNoY0Ek+wrigf1FS/NFZEYfQOtCT2dnkYFs/Af
 FAYMeAHuqe8tZbJFvrn9Gm0LW8hv2sBLWtCw3gHOmP/XHjPUVnE3M2dozxsK/PeVnobT
 af/1d9mkYvBM2tcU3Lw3Pw7jXhU+MJDhXnmGz49/NnIOv7L6CoFA/4WHE49mTzZmHkTZ
 3bOYotAXOLSXKE/zh8ukw7uPn4kZdJktrnuTVtWDkELwvs58EjnAk8xYEZaij68nmTxB
 DrLXV7ctIFoAfN0V7k9XXzQeTriTqVALLhiF2YRtpcV9m8QBIgAm5vez6fWwm0XGqM4A
 YlUw==
X-Gm-Message-State: ANhLgQ3yr5dOG1LBm43sBh4yl05t4bx89DenHOkNM8bp/94JguYN3jxK
 8lilbdZU2eAKXjF/iwkBPeMz9XpT+tI=
X-Google-Smtp-Source: ADFU+vuLYy+lljb+KFUKVYBtEICQs/PPb9aKDFgrqmaGDQGwZhLBeg8Q7eTUX+CB4PVtq3IexyJeFQ==
X-Received: by 2002:adf:82a6:: with SMTP id 35mr7850845wrc.307.1585209320452; 
 Thu, 26 Mar 2020 00:55:20 -0700 (PDT)
Received: from macbook-pro-alvaro.lan
 (167.red-83-44-12.dynamicip.rima-tde.net. [83.44.12.167])
 by smtp.gmail.com with ESMTPSA id i19sm2431730wmb.44.2020.03.26.00.55.19
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 26 Mar 2020 00:55:19 -0700 (PDT)
From: =?utf-8?Q?=C3=81lvaro_Fern=C3=A1ndez_Rojas?= <noltari@gmail.com>
Message-Id: <58B1D6B4-EC10-437F-8043-C43C80E282BC@gmail.com>
Mime-Version: 1.0 (Mac OS X Mail 13.0 \(3608.60.0.2.5\))
Date: Thu, 26 Mar 2020 08:55:15 +0100
In-Reply-To: <50816a6c-8978-ddef-3b43-d973e566aab8@candelatech.com>
To: Ben Greear <greearb@candelatech.com>
References: <50816a6c-8978-ddef-3b43-d973e566aab8@candelatech.com>
X-Mailer: Apple Mail (2.3608.60.0.2.5)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_005523_656694_DE678697 
X-CRM114-Status: GOOD (  10.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:434 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [noltari[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] ath10k-ct firmware update
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
Content-Type: multipart/mixed; boundary="===============0624416145467382748=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org


--===============0624416145467382748==
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_8C3FD507-5C9D-49F8-86BE-EB729E1E8FC8"


--Apple-Mail=_8C3FD507-5C9D-49F8-86BE-EB729E1E8FC8
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

Hello Ben,

I=E2=80=99ve just created a PR with this:
https://github.com/openwrt/openwrt/pull/2863 =
<https://github.com/openwrt/openwrt/pull/2863>

Best regards,
=C3=81lvaro.

> El 25 mar 2020, a las 22:06, Ben Greear <greearb@candelatech.com> =
escribi=C3=B3:
>=20
> Wave-1:
>=20
>  *  March 19, 2020:  Fix problem where power-save was not enabled when =
going off-channel to scan.
>                      The problem was a boolean logic inversion in the =
chmgr code, a regression I introduced
>                      a long time ago.
>=20
>  *  March 19, 2020:  When scanning only on current working channel, do =
not bother with disable/enable
>                      powersave.  This should make an on-channel scan =
less obtrusive than it was previously.
>=20
>  *  March 23, 2020:  Fix channel-mgr use-after-free problem that =
caused crashes in some cases.  The crash
>                      was exacerbated by recent power-save changes.
>=20
>  *  March 23, 2020:  Fix station-mode power-save related crash:  =
backported the fix from 10.2 QCA firmware.
>=20
>  *  March 23, 2020:  Attempt to better clean up power-save objects and =
state, especially in station mode.
>=20
>=20
> Wave-2:  No changes since last time I posted.
>=20
> If someone can get these patched into OpenWrt I'd appreciate it.
>=20
> 988x
> 2f0bf766e400a4c5726e77b128eb8c141ebaa778526fe2c7c5083f3b17659dbf  =
firmware-2-ct-full-community-22.bin.lede.017
> 5e4285d5c6eee159a25ca14c6ce26022c32380bd7bafaedfc0c5de1510119007  =
firmware-2-ct-full-htt-mgt-community-22.bin.lede.017
> /home/greearb/candela_html/downloads
> 9887
> 4fa30e0e1972ca3b06225a731df0f93a1b73ac67fea5bf54bb55dea3bbc0da6a  =
firmware-2-ct-full-community-22.bin.lede.017
> dc681b6b1e45956e7c2e418ab05eee5c943d13e775209196d9bd931ff6493935  =
firmware-2-ct-full-htt-mgt-community-22.bin.lede.017
> /home/greearb/candela_html/downloads
> 9980
> 289ea845d4bbae6f36b3af2a13a5eaa07097f52d10f7b7306cfc9e2dd394f889  =
firmware-5-ct-full-community-12.bin-lede.017
> adedcd3d379a910bc3a5257d75f8970e11319f4cd9c1b34440d35821602a8b9c  =
firmware-5-ct-full-htt-mgt-community-12.bin-lede.017
> /home/greearb/candela_html/downloads
> 9984
> 8175be5b3946bddc042be018ff7713e67b41b59374ef4cdd183185b59274c91a  =
firmware-5-ct-full-community-12.bin-lede.017
> eb8b894cfe0d1aaa87f130bb7fd1815ef07b951c14df8a2ceaeb780df8f640e0  =
firmware-5-ct-full-htt-mgt-community-12.bin-lede.017
> /home/greearb/candela_html/downloads
> 4019
> 29e9f662c4cd287213877abfbb90fbabb5e32dd3710d3ade82aa94a0921972ae  =
firmware-5-ct-full-community-12.bin-lede.017
> 559c911f23856b1d3d864ce714d1bef7262bf6638e93e057ecf8d5dba48ca1e6  =
firmware-5-ct-full-htt-mgt-community-12.bin-lede.017
> /home/greearb/candela_html/downloads
> 9888
> b295880a8b08ec2680d85daaf5f20232a0e73d9cc579bf3efd7ffae24ea340d7  =
firmware-5-ct-full-community-12.bin-lede.017
> 26fe7c00df10e93373a0f9f105e85d02bb8b1cdd629183ce22a5147138336aec  =
firmware-5-ct-full-htt-mgt-community-12.bin-lede.017
>=20
> Thanks,
> Ben
>=20
> --=20
> Ben Greear <greearb@candelatech.com>
> Candela Technologies Inc  http://www.candelatech.com
>=20
>=20
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel


--Apple-Mail=_8C3FD507-5C9D-49F8-86BE-EB729E1E8FC8
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html; =
charset=3Dutf-8"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; line-break: after-white-space;" class=3D"">Hello=
 Ben,<div class=3D""><br class=3D""></div><div class=3D"">I=E2=80=99ve =
just created a PR with this:</div><div class=3D""><a =
href=3D"https://github.com/openwrt/openwrt/pull/2863" =
class=3D"">https://github.com/openwrt/openwrt/pull/2863</a></div><div =
class=3D""><br class=3D""></div><div class=3D"">Best regards,</div><div =
class=3D"">=C3=81lvaro.</div><div class=3D""><div><br =
class=3D""><blockquote type=3D"cite" class=3D""><div class=3D"">El 25 =
mar 2020, a las 22:06, Ben Greear &lt;<a =
href=3D"mailto:greearb@candelatech.com" =
class=3D"">greearb@candelatech.com</a>&gt; escribi=C3=B3:</div><br =
class=3D"Apple-interchange-newline"><div class=3D""><div =
class=3D"">Wave-1:<br class=3D""><br class=3D""> &nbsp;* &nbsp;March 19, =
2020: &nbsp;Fix problem where power-save was not enabled when going =
off-channel to scan.<br class=3D""> =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;The problem was a =
boolean logic inversion in the chmgr code, a regression I introduced<br =
class=3D""> =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;a long time ago.<br =
class=3D""><br class=3D""> &nbsp;* &nbsp;March 19, 2020: &nbsp;When =
scanning only on current working channel, do not bother with =
disable/enable<br class=3D""> =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;powersave. =
&nbsp;This should make an on-channel scan less obtrusive than it was =
previously.<br class=3D""><br class=3D""> &nbsp;* &nbsp;March 23, 2020: =
&nbsp;Fix channel-mgr use-after-free problem that caused crashes in some =
cases. &nbsp;The crash<br class=3D""> =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;was exacerbated by =
recent power-save changes.<br class=3D""><br class=3D""> &nbsp;* =
&nbsp;March 23, 2020: &nbsp;Fix station-mode power-save related crash: =
&nbsp;backported the fix from 10.2 QCA firmware.<br class=3D""><br =
class=3D""> &nbsp;* &nbsp;March 23, 2020: &nbsp;Attempt to better clean =
up power-save objects and state, especially in station mode.<br =
class=3D""><br class=3D""><br class=3D"">Wave-2: &nbsp;No changes since =
last time I posted.<br class=3D""><br class=3D"">If someone can get =
these patched into OpenWrt I'd appreciate it.<br class=3D""><br =
class=3D"">988x<br =
class=3D"">2f0bf766e400a4c5726e77b128eb8c141ebaa778526fe2c7c5083f3b17659db=
f &nbsp;firmware-2-ct-full-community-22.bin.lede.017<br =
class=3D"">5e4285d5c6eee159a25ca14c6ce26022c32380bd7bafaedfc0c5de151011900=
7 &nbsp;firmware-2-ct-full-htt-mgt-community-22.bin.lede.017<br =
class=3D"">/home/greearb/candela_html/downloads<br class=3D"">9887<br =
class=3D"">4fa30e0e1972ca3b06225a731df0f93a1b73ac67fea5bf54bb55dea3bbc0da6=
a &nbsp;firmware-2-ct-full-community-22.bin.lede.017<br =
class=3D"">dc681b6b1e45956e7c2e418ab05eee5c943d13e775209196d9bd931ff649393=
5 &nbsp;firmware-2-ct-full-htt-mgt-community-22.bin.lede.017<br =
class=3D"">/home/greearb/candela_html/downloads<br class=3D"">9980<br =
class=3D"">289ea845d4bbae6f36b3af2a13a5eaa07097f52d10f7b7306cfc9e2dd394f88=
9 &nbsp;firmware-5-ct-full-community-12.bin-lede.017<br =
class=3D"">adedcd3d379a910bc3a5257d75f8970e11319f4cd9c1b34440d35821602a8b9=
c &nbsp;firmware-5-ct-full-htt-mgt-community-12.bin-lede.017<br =
class=3D"">/home/greearb/candela_html/downloads<br class=3D"">9984<br =
class=3D"">8175be5b3946bddc042be018ff7713e67b41b59374ef4cdd183185b59274c91=
a &nbsp;firmware-5-ct-full-community-12.bin-lede.017<br =
class=3D"">eb8b894cfe0d1aaa87f130bb7fd1815ef07b951c14df8a2ceaeb780df8f640e=
0 &nbsp;firmware-5-ct-full-htt-mgt-community-12.bin-lede.017<br =
class=3D"">/home/greearb/candela_html/downloads<br class=3D"">4019<br =
class=3D"">29e9f662c4cd287213877abfbb90fbabb5e32dd3710d3ade82aa94a0921972a=
e &nbsp;firmware-5-ct-full-community-12.bin-lede.017<br =
class=3D"">559c911f23856b1d3d864ce714d1bef7262bf6638e93e057ecf8d5dba48ca1e=
6 &nbsp;firmware-5-ct-full-htt-mgt-community-12.bin-lede.017<br =
class=3D"">/home/greearb/candela_html/downloads<br class=3D"">9888<br =
class=3D"">b295880a8b08ec2680d85daaf5f20232a0e73d9cc579bf3efd7ffae24ea340d=
7 &nbsp;firmware-5-ct-full-community-12.bin-lede.017<br =
class=3D"">26fe7c00df10e93373a0f9f105e85d02bb8b1cdd629183ce22a5147138336ae=
c &nbsp;firmware-5-ct-full-htt-mgt-community-12.bin-lede.017<br =
class=3D""><br class=3D"">Thanks,<br class=3D"">Ben<br class=3D""><br =
class=3D"">-- <br class=3D"">Ben Greear &lt;<a =
href=3D"mailto:greearb@candelatech.com" =
class=3D"">greearb@candelatech.com</a>&gt;<br class=3D"">Candela =
Technologies Inc &nbsp;<a href=3D"http://www.candelatech.com" =
class=3D"">http://www.candelatech.com</a><br class=3D""><br class=3D""><br=
 class=3D"">_______________________________________________<br =
class=3D"">openwrt-devel mailing list<br class=3D""><a =
href=3D"mailto:openwrt-devel@lists.openwrt.org" =
class=3D"">openwrt-devel@lists.openwrt.org</a><br =
class=3D"">https://lists.openwrt.org/mailman/listinfo/openwrt-devel<br =
class=3D""></div></div></blockquote></div><br =
class=3D""></div></body></html>=

--Apple-Mail=_8C3FD507-5C9D-49F8-86BE-EB729E1E8FC8--


--===============0624416145467382748==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============0624416145467382748==--

