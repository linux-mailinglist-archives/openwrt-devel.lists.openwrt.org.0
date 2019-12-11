Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FAAD11BD37
	for <lists+openwrt-devel@lfdr.de>; Wed, 11 Dec 2019 20:43:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:Date:From:To:MIME-Version:Message-ID:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=BcF8W3uQhyGJhGQoNXXe0UbdJq2xKudQ6wST6SEFEmo=; b=mz3
	9BZF+eX+fZYxUXgOoryyRyzvocwiXnuaAGD46lCqFnmQ/UaYdUcitIkQiplVIu6OV1zhwFB2SyXNX
	vWbWxSot1uUFjEjU9/JzRSjv8mMkUWcdzk/riuin91P/xhSgITW3qCzKZKpMnRCVKYssNQmwzXRMC
	aTdzWcKW1E/s+weFLr0kMp4LYIne3BFYqtN/4ujktehJpxRNuupdGFqPrwBUOf3qjdCWuzE9l8u/F
	ewkCvYKqM0/Psl4sH/NPm4QDR6B9udqKVVRodWCCVxFy+HOiIu2PJa6nVFGmNqO0LIetlphrGtdkh
	52hKL+gDMmg5xrLI2sVWMUiw+GhBR2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1if7td-0003RB-RU; Wed, 11 Dec 2019 19:43:41 +0000
Received: from mail-pf1-x435.google.com ([2607:f8b0:4864:20::435])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1if7tV-0003Pi-Qz
 for openwrt-devel@lists.openwrt.org; Wed, 11 Dec 2019 19:43:35 +0000
Received: by mail-pf1-x435.google.com with SMTP id q8so2299956pfh.7
 for <openwrt-devel@lists.openwrt.org>; Wed, 11 Dec 2019 11:43:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:mime-version:to:from:subject:date:importance;
 bh=Z3saGTZZ7IPA1CLjw1I7Ug4gcTBdZB0Iquh2d0DL5v8=;
 b=o5G323bc66Elvvhr7J2MAlVbhLIzn1maHe7g2DfNghemdqnUvGQCmEQsiTqaJEgIVO
 Z3VEVLtdlW134/SbRvHKzGUSUCelnjmN+cIvtlzhxOWbDCQBFSVjFIPkgOyY4ek2A9sx
 6WnXPWl+JSSliaVh7AvkY1CI1S0tSiELPLDpXhcYwZWf7CzdNDVofN2TWM+lisWtlxpw
 DMtJ+wGvuXnkqF/fa7VtPzR2ezfUMGYZWhOpPupHjoXaAIEwMjaiBc9V0FUz1zfU4EpI
 AT5mxWH/HHpIqXiiHjiOchyakxcAkU6e53OJCagHkRznroh5trohOacmUfH1UHI8oO/e
 Qs2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:mime-version:to:from:subject:date
 :importance;
 bh=Z3saGTZZ7IPA1CLjw1I7Ug4gcTBdZB0Iquh2d0DL5v8=;
 b=dNEuTxiWBLgdeO5KfeYCqDUEeXK8QnKdxvflecbWdT+/IdVZ4vPJIsZ5uo7qqTy8xw
 6wYAAj26Tv16UM0GN8MBRvAO9mf4k6BMpIaGh5PAE7FuotWNNJupeXgAniLQPXnSyQI9
 rvD5elSYWvDuJuANsWJeLtuG93mKXhzkFO5m1bOaDYoTZWyjIuxJwk5afdn6wg+zfKOS
 RPkwOticK03da77u5GvFxhpvk6arSAOVofbJje8FrUCpvPssoCTkt2dbLyF+fgKpg5qo
 ea/c7cU9xDR9lllYUmkh3R8QNVWqblCez3ut4fCiJ3dm204+EZ0mAEHKB7tjOstQFusT
 PqiQ==
X-Gm-Message-State: APjAAAWaPNLzdtrwyvrigI8CflNvqqh9aT5Af4jEV/Ne0D0bEm1WtzdB
 1jJhLqmzIgnah26vgVAPZe5wxzkr
X-Google-Smtp-Source: APXvYqwLqT/hjWcl7G8i8GnDus3rMBa5Xv817+xuc5CGgk7OzqL7uHrO7MpygirXI6HL5P0dJxhi/Q==
X-Received: by 2002:aa7:8b17:: with SMTP id f23mr5670217pfd.197.1576093412023; 
 Wed, 11 Dec 2019 11:43:32 -0800 (PST)
Received: from ?IPv6:::ffff:192.168.3.201? ([27.4.110.69])
 by smtp.gmail.com with ESMTPSA id d2sm3333925pja.1.2019.12.11.11.43.29
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 11 Dec 2019 11:43:30 -0800 (PST)
Message-ID: <5df146e2.1c69fb81.5cb4d.808e@mx.google.com>
MIME-Version: 1.0
To: "openwrt-devel@lists.openwrt.org" <openwrt-devel@lists.openwrt.org>
From: sagar jain <geekysagarjain@gmail.com>
Date: Thu, 12 Dec 2019 01:13:32 +0530
Importance: normal
X-Priority: 3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_114333_876610_5411997A 
X-CRM114-Status: UNSURE (   2.34  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:435 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (geekysagarjain[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] (no subject)
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
Content-Type: multipart/mixed; boundary="===============7339470265056472874=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============7339470265056472874==
Content-Type: multipart/alternative;
	boundary="_035BC71F-F67B-4F0D-81BC-5BE41A03E2E1_"

--_035BC71F-F67B-4F0D-81BC-5BE41A03E2E1_
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"

Can i sell OpenWRT based router ?

Sent from Mail for Windows 10


--_035BC71F-F67B-4F0D-81BC-5BE41A03E2E1_
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html; charset="utf-8"

<html xmlns:o=3D"urn:schemas-microsoft-com:office:office" xmlns:w=3D"urn:sc=
hemas-microsoft-com:office:word" xmlns:m=3D"http://schemas.microsoft.com/of=
fice/2004/12/omml" xmlns=3D"http://www.w3.org/TR/REC-html40"><head><meta ht=
tp-equiv=3DContent-Type content=3D"text/html; charset=3Dutf-8"><meta name=
=3DGenerator content=3D"Microsoft Word 15 (filtered medium)"><style><!--
/* Font Definitions */
@font-face
	{font-family:Mangal;
	panose-1:2 4 5 3 5 2 3 3 2 2;}
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
.MsoChpDefault
	{mso-style-type:export-only;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 72.0pt 72.0pt 72.0pt;}
div.WordSection1
	{page:WordSection1;}
--></style></head><body lang=3DEN-IN link=3Dblue vlink=3D"#954F72"><div cla=
ss=3DWordSection1><p class=3DMsoNormal><span lang=3DEN-US>Can i sell OpenWR=
T based router ?</span></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p cla=
ss=3DMsoNormal>Sent from <a href=3D"https://go.microsoft.com/fwlink/?LinkId=
=3D550986">Mail</a> for Windows 10</p><p class=3DMsoNormal><o:p>&nbsp;</o:p=
></p></div></body></html>=

--_035BC71F-F67B-4F0D-81BC-5BE41A03E2E1_--



--===============7339470265056472874==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============7339470265056472874==--


