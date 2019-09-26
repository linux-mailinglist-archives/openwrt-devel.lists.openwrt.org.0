Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 20925BEE65
	for <lists+openwrt-devel@lfdr.de>; Thu, 26 Sep 2019 11:25:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:Date:From:To:MIME-Version:Message-ID:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=REljSV43uuYfI1BS4Uh7XlSR06eScGWscjALZr/9BS8=; b=WHF
	uUa/gD4UBJL225+AXFymwwz0H97mD9DoGZ5VWTalsBJ+jRkGk+ZLe9RQHNyUn8WHamhzX6m/u+nXI
	SIDqI4W48qkxn3Qb6vX7Iurz1cjwzXNXUrlS/3WzILa/Yw2/2ZRPQPavFgTXsn3AyOZHiNHQxeL0K
	lnjRGQtyxTnVwmKdaXvOwabIWsoSkJCb7QhSp6uvXwPO/OEvbsOlxvGbeMwnOlpuLNx+IxanHkgQh
	Y/qqmQYngcLgdswhawc6ht7xdNRjtUP0cOmZFpruIQHuZa8m/kDjsSjr4zF2ZZRzMVTC0/FLeuE42
	TYS4SCdby3FL31KIW0kwuASPdNwuvQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDQ20-0008P6-Qc; Thu, 26 Sep 2019 09:25:49 +0000
Received: from mail-pg1-x530.google.com ([2607:f8b0:4864:20::530])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDQ1h-0008Og-JU
 for openwrt-devel@lists.openwrt.org; Thu, 26 Sep 2019 09:25:30 +0000
Received: by mail-pg1-x530.google.com with SMTP id o10so1244463pgs.6
 for <openwrt-devel@lists.openwrt.org>; Thu, 26 Sep 2019 02:25:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:mime-version:to:from:subject:date:importance;
 bh=btP3Wh6zCt1G5eNAWX+OwimQotaEnI2RL7nqcOqcki4=;
 b=FX/pAQ1z0JjLO4glsCCgKUEXz9m7XQGI8iRUMbSUnk9jGr69ceWU1OYJEiWcf2/lcm
 7v7rPcPSR/odGl2XHRbrBvJt7+NAVaj6Qsf2RAk3a1t4eJK8EsD3oeAN3L7+fuiUso8F
 sjKVxOvRmVfgX4OVKk+/e2CDxkBOvPC+LQ432iwKsqmbV5y+LdUaKdyDFN5RrbhnRG3H
 5qNjSP8JUlJW782oPka6PUjN83FdvbvTGhTEoWQ9R85a9182pUTXFlmimEgSAa1TFnpk
 yMEAP6whiGk0x8l7C1IsmVl3cglXef9v0A6SE5Elp1XaubRvvu2U0JaWch2hby3DekK/
 jB+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:mime-version:to:from:subject:date
 :importance;
 bh=btP3Wh6zCt1G5eNAWX+OwimQotaEnI2RL7nqcOqcki4=;
 b=Z72GIoZ03gskv4Cn1c8hGY2F76qzmi8VfJmhXTRSdUHKkUeGjyGZViQabHjuzbdCHa
 +90eiEmMUbPpstH6/vpd0QG155zAEA5DrLu6IaQQuJnFPRHofB9NhBQ/yy6dqPVZtl5J
 HA6O5wXUpMdEeZaJtM5pqgJzEwa3YKvnOw6ZWgWc7jSIArxAqjEEgUnPWfOy6dKVmJF+
 7EgMvmNQmmxpo2WewCopDTQJutYO3PhM95ly0pRNsihw1OLa94CoWNgLr39U4/8VWKyb
 1uBDI2byazMUh/OvjRJvwigrvOnXp5G41nuXpkLNnSlkkw8EC5M9zefjSeXLxC2swkD4
 DVtg==
X-Gm-Message-State: APjAAAUF5hOJtkrp1Q7a6dbdxzV9KdUHGZuxx5dP07PFVm8ZkhCeBjEr
 j9GKx5LbIKO+qGDc2XxfEbd1Y34fstZl0Q==
X-Google-Smtp-Source: APXvYqw7aw0ZKrPrBTOnCN14vLAZNuB68KspSCI4HrI9LJq4kDPdIoZuLctd7AkNgP4KlMwWc0yQLA==
X-Received: by 2002:aa7:9e10:: with SMTP id y16mr2543808pfq.114.1569489927771; 
 Thu, 26 Sep 2019 02:25:27 -0700 (PDT)
Received: from ?IPv6:::ffff:192.168.0.201? ([103.44.119.91])
 by smtp.gmail.com with ESMTPSA id x6sm3946317pfd.53.2019.09.26.02.25.25
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 26 Sep 2019 02:25:26 -0700 (PDT)
Message-ID: <5d8c8406.1c69fb81.7177e.8639@mx.google.com>
MIME-Version: 1.0
To: "openwrt-devel@lists.openwrt.org" <openwrt-devel@lists.openwrt.org>
From: sagar jain <sagarjainta@gmail.com>
Date: Thu, 26 Sep 2019 14:55:26 +0530
Importance: normal
X-Priority: 3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190926_022529_661518_28AC05CC 
X-CRM114-Status: UNSURE (   3.71  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:530 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagarjainta[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] openwrt based router
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
Content-Type: multipart/mixed; boundary="===============7278452036931644059=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============7278452036931644059==
Content-Type: multipart/alternative;
	boundary="_6466BE73-909E-4B9E-96ED-7939455F5EC0_"

--_6466BE73-909E-4B9E-96ED-7939455F5EC0_
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"


Can I sell openwrt based router

--_6466BE73-909E-4B9E-96ED-7939455F5EC0_
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
.MsoChpDefault
	{mso-style-type:export-only;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 72.0pt 72.0pt 72.0pt;}
div.WordSection1
	{page:WordSection1;}
--></style></head><body lang=3DEN-IN link=3Dblue vlink=3D"#954F72"><div cla=
ss=3DWordSection1><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoN=
ormal>Can I sell openwrt based router</p></div></body></html>=

--_6466BE73-909E-4B9E-96ED-7939455F5EC0_--



--===============7278452036931644059==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============7278452036931644059==--


