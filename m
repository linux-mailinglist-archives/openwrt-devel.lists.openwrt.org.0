Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 12E661EEFE3
	for <lists+openwrt-devel@lfdr.de>; Fri,  5 Jun 2020 05:25:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:MIME-Version:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=okgCYPUeq2lcdVZKmfQ/vmmjBP1m6EySoJhYKqf1wr8=; b=m0n
	PN0Usz++occNyYuLMOfzsiyA5Jz+Y0yPFRIk0F+XJFTdLovE+LoVqf6NtpBDXP/8BLfv7IwzNYe54
	K70Xf+NtdjX/prokY8mziTjNFGJaXFyjFiu2YWqkY/KB18s8h5LIhyAyfSD35TxO6ik56RUM3FLmd
	cYebkY5NpwRigy/IYApkZaBxttVXgUANT3jFarlJ1nytUR51Yr9xqcAF6vBCO1fXgkgR48fmzgKh7
	x+Lii4sQVb4BH0Cxtb8tFORApJdfRrn5WEW2PlBuHGem5Um7zBZRf6bciSFChf8w1mr9oQolTwcNv
	a7FMX3XOn0p5M7TmV38nFyDwYfyMhqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jh2zE-0008Uj-AQ; Fri, 05 Jun 2020 03:25:40 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jh2z7-0008P2-LN
 for openwrt-devel@lists.openwrt.org; Fri, 05 Jun 2020 03:25:35 +0000
Received: by mail-io1-xd44.google.com with SMTP id d5so8738594ios.9
 for <openwrt-devel@lists.openwrt.org>; Thu, 04 Jun 2020 20:25:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=meshplusplus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:from:date:message-id:subject:to;
 bh=lgdWF8B6UzsEXQJZ+JHtkivZ3RsiQLN/R/TPmfTZYIQ=;
 b=DkbFDun1rXk7XT45BaJWJKJH8e31wX+ni0hX867n6N+1Fpl2I4f3e46WeRezOekyh9
 QNWVWfS4Dh9bJa9INP6up9tb749g664lTdgfPXAdGnlsdEdgm5Dm5+L1D63GghmzZRar
 PfyocMKUV49Uf+AAzz/XSdT3rBYOCNhJfHH9I6BZq+At2HFfRziHPTfTX/skRk91aGuW
 lW7oXidnFJxeq646sep+M4QGeUeCX/eDkffU1GUfnqIYrvNliPken4POUBBT76y47Ly8
 ma/KhQnyUS5PTb0gIPWX3IMGL506yOPkQh7TPT3UTfpiobJs5lij3wZY3ZVIE/KFpEt5
 vKXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=lgdWF8B6UzsEXQJZ+JHtkivZ3RsiQLN/R/TPmfTZYIQ=;
 b=Avq7iF4F+DWg0L4hDGC7F0RqeXjTrxsWjP+qq6E4y0mxn8NImNQiTWjJ+Baz5vC7CC
 Nmfm+2YQoEizJxXfFilLAVUHuaZoUvh8FXCjI1Fi+tg2QH7+xwrA0GBTuDuu6APmiejE
 TnX2cGr22EWPAsR+QlW30/wiBUPPMyNy1YHbTtSNNsHPaZ5Sopra9gE+rh3o0BAFvXvL
 2rRXmfaxrHJBi+KS/GBaEJ2M+uhOSrRT84sNdZ/XLtckXzU5a1ScrQWZgsxdVvaWLHQK
 x1dr5cxV5w+mxPRBaFSvnPZEQBxM6kktKSKJeaSXT/sXq38+CDq691P3iuDtiwc1O4MC
 2Mzg==
X-Gm-Message-State: AOAM533qzjvQXC4dBTGKvgiGpuBR5biRgodUt2XLj0LQCyvSkheX3Qx3
 bAEYjAypvaVIFM943LzW3q4M5y+3ToUmazp4WD4pOnTwMWk=
X-Google-Smtp-Source: ABdhPJyshdcpvPIsj9kZHhQ7qya2uDkd8zcYaWgLN4ZXENHuYnKzKogMTHU5p4L04/cYC93L4vcfNWKxzb81C3n2ElQ=
X-Received: by 2002:a05:6638:bd4:: with SMTP id
 g20mr6832864jad.92.1591327532011; 
 Thu, 04 Jun 2020 20:25:32 -0700 (PDT)
MIME-Version: 1.0
From: Daniel Bailey <danielb@meshplusplus.com>
Date: Thu, 4 Jun 2020 20:25:21 -0700
Message-ID: <CABzx=O3ZmThnAUbjz55pM6YE4mp7B4RQEA2TiGQjiDu9yNDhRA@mail.gmail.com>
To: openwrt-devel <openwrt-devel@lists.openwrt.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_202533_764911_70A7CF26 
X-CRM114-Status: UNSURE (   1.67  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 0.0 T_KAM_HTML_FONT_INVALID BODY: Test for Invalidly Named or
 Formatted Colors in HTML
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] Inquiry on process of getting patches accepted
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
Content-Type: multipart/mixed; boundary="===============1012962580957464929=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============1012962580957464929==
Content-Type: multipart/alternative; boundary="00000000000044646105a74dd0b4"

--00000000000044646105a74dd0b4
Content-Type: text/plain; charset="UTF-8"

Hi all,

I'm curious about the process to get a patch accepted.

I followed the steps (and formatting guidelines) at
https://openwrt.org/submitting-patches and submitted a couple of patches
for procd last Friday and another one today. I submitted them to the list
alone because I couldn't tell if there was an official maintainer (I didn't
see one in the procd Makefile). Looking at an 18.06 control file in my
build tree, it appears that maybe John Crispin is the maintainer?

Looking at http://patchwork.ozlabs.org/project/openwrt/list/, I see my
patches there and they are marked as new. But some are there from July,
2018 and are marked as new.

Please advise me whether there are further steps I should take.

Best,

Daniel

-- 

Daniel Bailey

Senior Firmware Engineer MeshPlusPlus, Inc.

m: (503) 347-3664 a: 935 W. Chestnut St. Ste. 505, Chicago IL 60642

w: www.meshplusplus.com e: danielb@meshplusplus.com


*Confidentiality Notice: This email message, including any attachments, is
for the sole use of the intended recipient(s) and may **contain
confidential and privileged information. If you are not the intended
recipient, please contact the **sender by reply e-mail and destroy all
copies of the original message. Any unauthorized review, use, **disclosure,
or distribution is prohibited.*

--00000000000044646105a74dd0b4
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi all,<br><br>I&#39;m curious about the process to get a =
patch accepted.<br><br>I followed the steps (and formatting guidelines) at=
=C2=A0<a href=3D"https://openwrt.org/submitting-patches">https://openwrt.or=
g/submitting-patches</a>=C2=A0and submitted a couple of patches for procd l=
ast Friday and another one today. I submitted them to the list alone becaus=
e I couldn&#39;t tell if there was an official maintainer (I didn&#39;t see=
 one in the procd Makefile). Looking at an 18.06 control file in my build t=
ree, it appears that maybe John Crispin is the maintainer?<br><br>Looking a=
t=C2=A0<a href=3D"http://patchwork.ozlabs.org/project/openwrt/list/">http:/=
/patchwork.ozlabs.org/project/openwrt/list/</a>, I see my patches there and=
 they are marked as new. But some are there from July, 2018 and are marked =
as new.<br><br>Please advise me whether there are further steps I should=C2=
=A0take.<br><br>Best,<br><br>Daniel<br clear=3D"all"><div><br></div>-- <br>=
<div dir=3D"ltr" class=3D"gmail_signature" data-smartmail=3D"gmail_signatur=
e"><div dir=3D"ltr"><span><div dir=3D"ltr" style=3D"margin-left:0pt" align=
=3D"left"><span><div dir=3D"ltr" style=3D"margin-left:0pt" align=3D"left"><=
table style=3D"border:none;border-collapse:collapse"><colgroup><col width=
=3D"116"><col width=3D"508"></colgroup><tbody><tr style=3D"height:88.515463=
91752576pt"><td style=3D"border-right:solid #696969 2.25pt;vertical-align:t=
op;padding:5.688pt 5.688pt 5.688pt 5.688pt;overflow:hidden"><p dir=3D"ltr" =
style=3D"line-height:1.2;margin-top:0pt;margin-bottom:0pt"><span style=3D"f=
ont-size:9pt;font-family:Arial;color:rgb(17,85,204);background-color:transp=
arent;vertical-align:baseline;white-space:pre-wrap"><span style=3D"border:n=
one;display:inline-block;overflow:hidden;width:96px;height:96px"><img src=
=3D"https://lh5.googleusercontent.com/2H1o_pd6MKySVU8rwfARrpRD_5MM3crOB0TK4=
yKoW9oS7Iz7A8_78z7Bg7Z3U0nWaHVgP_HXxK39COIkfCO_UB-Nk2AUKToKs_6AmElbdpqDTYDm=
gCs8bSB2m4pCI0-WhOujZnWY" width=3D"96" height=3D"96" style=3D"margin-left:0=
px;margin-top:0px"></span></span></p></td><td style=3D"border-left:solid #6=
96969 2.25pt;vertical-align:top;padding:5.688pt 5.688pt 5.688pt 5.688pt;ove=
rflow:hidden"><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margi=
n-bottom:0pt"><span style=3D"font-size:14.5pt;font-family:Arial;color:rgb(1=
1,83,148);vertical-align:baseline;white-space:pre-wrap">Daniel Bailey</span=
></p><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-bottom:=
0pt"><span style=3D"font-size:9.5pt;font-family:Arial;color:rgb(11,83,148);=
font-weight:700;vertical-align:baseline;white-space:pre-wrap">Senior Firmwa=
re Engineer</span><span style=3D"font-size:9.5pt;font-family:Arial;color:rg=
b(80,0,80);vertical-align:baseline;white-space:pre-wrap"> MeshPlusPlus, Inc=
.</span></p><br><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;mar=
gin-bottom:0pt"><span style=3D"font-size:8.5pt;font-family:Arial;color:rgb(=
171,171,171);vertical-align:baseline;white-space:pre-wrap">m: </span><span =
style=3D"font-size:8.5pt;font-family:Arial;color:rgb(17,85,204);vertical-al=
ign:baseline;white-space:pre-wrap">(503) 347-3664</span><span style=3D"font=
-size:8.5pt;font-family:Arial;color:rgb(80,0,80);vertical-align:baseline;wh=
ite-space:pre-wrap"> </span><span style=3D"font-size:8.5pt;font-family:Aria=
l;color:rgb(171,171,171);vertical-align:baseline;white-space:pre-wrap">a: <=
/span><span style=3D"font-size:8.5pt;font-family:Arial;color:rgb(80,0,80);v=
ertical-align:baseline;white-space:pre-wrap">935 W. Chestnut St. Ste. 505, =
Chicago IL 60642</span></p><p dir=3D"ltr" style=3D"line-height:1.38;margin-=
top:0pt;margin-bottom:0pt"><span style=3D"font-size:10pt;font-family:Arial;=
color:rgb(171,171,171);vertical-align:baseline;white-space:pre-wrap">w: </s=
pan><a href=3D"https://www.meshplusplus.com/" target=3D"_blank"><span style=
=3D"font-size:9pt;font-family:Arial;color:rgb(0,0,0);background-color:trans=
parent;vertical-align:baseline;white-space:pre-wrap">www.meshplusplus.com</=
span></a><span style=3D"font-size:9.5pt;font-family:Arial;color:rgb(80,0,80=
);vertical-align:baseline;white-space:pre-wrap"> </span><span style=3D"font=
-size:10pt;font-family:Arial;color:rgb(171,171,171);vertical-align:baseline=
;white-space:pre-wrap">e: </span><span style=3D"font-size:9pt;font-family:A=
rial;color:rgb(0,0,0);background-color:transparent;vertical-align:baseline;=
white-space:pre-wrap"><a href=3D"mailto:danielb@meshplusplus.com" target=3D=
"_blank">danielb@meshplusplus.com</a></span></p></td></tr></tbody></table><=
em style=3D"color:rgb(0,0,0);font-size:x-small"><br></em></div><div dir=3D"=
ltr" style=3D"margin-left:0pt" align=3D"left"><em style=3D"color:rgb(0,0,0)=
;font-size:x-small">Confidentiality Notice:=C2=A0<br>This email message, in=
cluding any attachments, is for the sole use of the intended recipient(s) a=
nd may=C2=A0</em><em style=3D"color:rgb(0,0,0);font-size:x-small">contain c=
onfidential and privileged information. If you are not the intended recipie=
nt, please contact the=C2=A0</em><em style=3D"color:rgb(0,0,0);font-size:x-=
small">sender by reply e-mail and destroy all copies of the original messag=
e. Any unauthorized review, use,=C2=A0</em><em style=3D"color:rgb(0,0,0);fo=
nt-size:x-small">disclosure, or distribution is prohibited.</em><br></div><=
/span><span></span></div></span></div></div></div>

--00000000000044646105a74dd0b4--


--===============1012962580957464929==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============1012962580957464929==--

