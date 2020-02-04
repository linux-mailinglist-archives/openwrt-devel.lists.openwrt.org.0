Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF9271516B7
	for <lists+openwrt-devel@lfdr.de>; Tue,  4 Feb 2020 09:05:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:MIME-Version:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=2Lwt1hRlP9U/INwHFyffv0cAHYhXe3nDMCme2YOGnuM=; b=XJn
	5zkd5Yg/xVwobjQX20p+UGLhcUmFQ3W/zkRK8UAbufY5esmU2TVfeAY73HD+etOb2BbOQ88jpIwx/
	FP8zYORdUIt/g4gbNeL7HDQITDDaXPzl22+WKWVKtGIn6yIAQPs7z5bsbObnghoIXa9YcZCvWyOy9
	dVrGaDbwm40ml1Pxec5QD+owzuhWuJpOntG54MSqq2OMTcexaZVAMUuFmX40STNVAzx5oXu+Ogc6n
	c3zlM33DwlG7mPaNpo6jdFLCymEHSIYpJiMD4aqzh9kG19NjDxi2mKVXi1/IXWczeRVN1nY2XtcYX
	mz+CqPZkPSKXblJ8LyFDW6J0V6Pu8tQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iytDI-0005Bl-Rd; Tue, 04 Feb 2020 08:05:40 +0000
Received: from mail-ua1-x930.google.com ([2607:f8b0:4864:20::930])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iytCx-00056H-0r
 for openwrt-devel@lists.openwrt.org; Tue, 04 Feb 2020 08:05:21 +0000
Received: by mail-ua1-x930.google.com with SMTP id c7so6386314uaf.5
 for <openwrt-devel@lists.openwrt.org>; Tue, 04 Feb 2020 00:05:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xpedite-africa-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:from:date:message-id:subject:to;
 bh=mPHKPU6ffMac5ZAR7EwPgqviti6q1Tw3RZnAcLMrkGA=;
 b=HwRhgez4658c+bQldik0P2TyhMjDpzhUMotXO76kOKOXQ2TyQ2i/oKJQIPiCnngP4D
 YTiM++xVORluB0OKy5X1ImBpCp3axmTC/FUu/qlsABOaXDYFXKf1DOFgoFmkvm+Nwiyv
 eCECGc5BAbcBhl+lescOfG/Gend3tLwEMOWAlzf3KAwrGAYOZA+inTcSz9/wSG9DrgQa
 /NtnOnptEx+C1a9snXIVfAdMi+0BV2+AoSVZo/TT6N7JcWAsXPQPiGpwvH3nyzq9S1/+
 YBfnRws4OFo7FHJmkbGF5Gf/nQ8JXOXl7BaRlFPRXlHsibbTz7HnjEi6g3v6BfoxW0Iy
 4Pbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=mPHKPU6ffMac5ZAR7EwPgqviti6q1Tw3RZnAcLMrkGA=;
 b=gtlHaASYIKcQivmSN9SqXYhikioPgIN92ct0SHuNjKThgxapVVtGhDfAw/b9q8u2dX
 oOVTHqybdx2fS47CkLzZ7exXFT0z662nGXtq+1nVZXr6NQbYBOxmpotspMUvaEp8UhZI
 9FPThvHWntplueTtkfjP7paeIrSqxhIKl9Nnn/GDKpLGcI5hHf42tgWyJtehXgHJahyD
 SDXs3lB/Hb5Pj7Epnb8wjwghfSHlTrU1G4m/tSx6WnpVXC2ofPbXBhs/EVSNyRaZ4Y4x
 rsBkoBV/G9gGq0yZcTXfb5pVxRc2TiScy9aBMYuCTfybT3r5KT8SWrft8b+xJyAVSbqt
 A5Xg==
X-Gm-Message-State: APjAAAUf6Rnf9MaJmHKBcNcqf4eyQseZ5+JM2DxtmlAhRPrgWpwPZGgM
 s5PS4iMJnXvAVMp7oxT0WrqV7IepmGA30zEgRqXxNWVxSAY=
X-Google-Smtp-Source: APXvYqwVld5VmhfBQ4LWwWTS1DqfpZKY0L9hU+WYX3qr6crnSPhb1YIWp5xkSCryzOPRKFnVJk1UvYH3XuJ52gOXpDQ=
X-Received: by 2002:ab0:7219:: with SMTP id u25mr16723128uao.10.1580803516338; 
 Tue, 04 Feb 2020 00:05:16 -0800 (PST)
MIME-Version: 1.0
From: Badi Varaee <badi.varaee@xpedite-africa.com>
Date: Tue, 4 Feb 2020 10:05:05 +0200
Message-ID: <CADzLWnWSh3=c77KmHZ+qRmXEr7-4VmJqOu2bzTNcT32QXGi1-g@mail.gmail.com>
To: openwrt-devel@lists.openwrt.org, openwrt-adm@lists.openwrt.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200204_000519_135317_71E5ED54 
X-CRM114-Status: UNSURE (   5.77  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.6 (+)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (1.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:930 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.5 URI_NOVOWEL            URI: URI hostname has long non-vowel sequence
 0.1 HTTPS_HTTP_MISMATCH    BODY: No description available.
 0.0 HTML_MESSAGE           BODY: HTML included in message
 0.0 HTML_IMAGE_ONLY_32     BODY: HTML: images with 2800-3200 bytes of
 words
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] OpenWrt on RBM33G for Bonding (Layer 2)
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
Content-Type: multipart/mixed; boundary="===============5911641609118759699=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============5911641609118759699==
Content-Type: multipart/alternative; boundary="0000000000000d3588059dbb804f"

--0000000000000d3588059dbb804f
Content-Type: text/plain; charset="UTF-8"

Good day,

Could someone help me with the following issue or just make a freelancer
account and we pay him to do it:

We require an expert to bond interfaces of Mikrotik router with OpenWrt
firmware ASAP. The OpenWrt firmware is already installed, and the
interfaces are picked up also the load balancing is working perfectly on
RBM33G Mikrotik(which has OpenWrt OS) with two Quectel LTE-A cards, and we
need to bond the router interfaces together and route all the traffic to
one Ethernet. We may also need to do the same thing with other Mikrotik
router-boards as well in the future, so we need to know how to configure
that router for the layer 2 bonding.
The purpose of that bonding is to have a fast and reliable layer 2
connections between the 2 sides. We need a Layer 2 bonding which bond all
interfaces through a VPN connection (each interface split the VPN
connections) to another server (could be CentOs).
If the VPN connections (For example PPTPs) fails while testing it is not
worth anything.

See the links below for the type of bonding we need:

https://www.openmptcprouter.com/
<https://www.freelancer.com/users/l.php?url=https:%2F%2Fwww.openmptcprouter.com%2F&sig=72a3336e58fc1e402a14d0bfabcf766cb726766dd4661a23e513a1cb54a0449f>
https://github.com/yskcg/openwrt-bonding
<https://www.freelancer.com/users/l.php?url=https:%2F%2Fgithub.com%2Fyskcg%2Fopenwrt-bonding&sig=05ad5c6d36fb29835da3fe97722519e88e38c8defaad15ad2571d201b70e750f>


Regards,



*Disclaimer* <https://nerospec.com/privacy-policy/>

--0000000000000d3588059dbb804f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><p style=3D"margin-top:0px;font-family:Helvetica,Arial,san=
s-serif;font-size:15px">Good day,</p><p style=3D"font-family:Helvetica,Aria=
l,sans-serif;font-size:15px">Could someone help me with the following issue=
 or just make a freelancer account and we pay him to do it:</p><p style=3D"=
font-family:Helvetica,Arial,sans-serif;font-size:15px">We require an expert=
 to bond interfaces of Mikrotik router with OpenWrt firmware ASAP. The Open=
Wrt firmware is already installed, and the interfaces are picked up also th=
e load balancing is working perfectly on RBM33G Mikrotik(which has OpenWrt =
OS) with two Quectel LTE-A cards, and we need to bond the router interfaces=
 together and route all the traffic to one Ethernet. We may also need to do=
 the same thing with other Mikrotik router-boards as well in the future, so=
 we need to know how to configure that router for the layer 2 bonding.<br>T=
he purpose of that bonding is to have a fast and reliable layer 2 connectio=
ns between the 2 sides. We need a Layer 2 bonding which bond all interfaces=
 through a VPN connection (each interface split the VPN connections) to ano=
ther server (could be CentOs).<br>If the VPN connections (For example PPTPs=
) fails while testing it is not worth anything.</p><p style=3D"font-family:=
Helvetica,Arial,sans-serif;font-size:15px">See the links below for the type=
 of bonding we need:<br><a href=3D"https://www.freelancer.com/users/l.php?u=
rl=3Dhttps:%2F%2Fwww.openmptcprouter.com%2F&amp;sig=3D72a3336e58fc1e402a14d=
0bfabcf766cb726766dd4661a23e513a1cb54a0449f" rel=3D"nofollow noopener" styl=
e=3D"background:transparent;color:rgb(0,136,204);text-decoration-line:none"=
><br>https://www.openmptcprouter.com/<br></a><a href=3D"https://www.freelan=
cer.com/users/l.php?url=3Dhttps:%2F%2Fgithub.com%2Fyskcg%2Fopenwrt-bonding&=
amp;sig=3D05ad5c6d36fb29835da3fe97722519e88e38c8defaad15ad2571d201b70e750f"=
 rel=3D"nofollow noopener" style=3D"background:transparent;color:rgb(0,136,=
204);text-decoration-line:none"><br>https://github.com/yskcg/openwrt-bondin=
g</a></p><p style=3D"font-family:Helvetica,Arial,sans-serif;font-size:15px"=
><br></p><p style=3D"font-family:Helvetica,Arial,sans-serif;font-size:15px"=
>Regards,</p><p style=3D"font-family:Helvetica,Arial,sans-serif;font-size:1=
5px"><br></p><div><div dir=3D"ltr" class=3D"gmail_signature" data-smartmail=
=3D"gmail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr"><div><div dir=
=3D"ltr"><div><div dir=3D"ltr"><div><div dir=3D"ltr"><div><div dir=3D"ltr">=
<div><div dir=3D"ltr"><div><div dir=3D"ltr"><div><div dir=3D"ltr"><div><div=
 dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><img src=3D"https://docs.goo=
gle.com/uc?export=3Ddownload&amp;id=3D16ne9GbKRHv3Sx63mKMoTyOqDh7eIU0IN&amp=
;revid=3D0B1iV74MgD9uXcnU4UVF1bVZqS1hQMVhNa2F3TG56Q0U3dmpZPQ"><br></div><di=
v dir=3D"ltr"><div><span style=3D"font-family:Calibri,sans-serif"><a href=
=3D"https://nerospec.com/privacy-policy/" target=3D"_blank"><i><span style=
=3D"font-family:&quot;Segoe UI&quot;,sans-serif;color:rgb(5,99,193)">Discla=
imer</span></i></a></span><br></div></div></div></div></div></div></div></d=
iv></div></div></div></div></div></div></div></div></div></div></div></div>=
</div></div></div></div></div>

--0000000000000d3588059dbb804f--


--===============5911641609118759699==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============5911641609118759699==--

