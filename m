Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CFB61F5D87
	for <lists+openwrt-devel@lfdr.de>; Wed, 10 Jun 2020 23:08:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:MIME-Version:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=jzYZIoai67dAF328LqOCKCkKbY6xdVEBuuM2U4TPQuQ=; b=TW1
	AibVME8Ivpj/1mUn1STQUDNiZI1hzzVmNC+SNQ4mIX+HmTwKbVChzSFplhgZd2p/Qtq5suA0HEQne
	Y00fdjKdiUVKUeBmBXbqiNsS4xzvGWE2WchCkf3a6s/ItU6jz6Ct7Y61DFR6gQRzbkSMoHU3EuYEt
	T7TZUkDE+CeZQXsMKB1p7gbUBDZO7EvkJhAK9J2ekYtkDRs2e3GfgCRuXoyL+9wDQeyYzXy560Oii
	3NkbYVrucaZ22BfbP0WKvecolofUCmGFKPtX/Mp6LxGK9cdDhLLq6tch6NZcPcEZWHTbdvyqzaKBw
	78Yfn/Zp4PNkl0pVbas14V9D8AFgHGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jj7xa-0004Eb-Mo; Wed, 10 Jun 2020 21:08:34 +0000
Received: from mail-qk1-x736.google.com ([2607:f8b0:4864:20::736])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jj7xV-0004DU-2R
 for openwrt-devel@lists.openwrt.org; Wed, 10 Jun 2020 21:08:30 +0000
Received: by mail-qk1-x736.google.com with SMTP id c12so3530059qkk.13
 for <openwrt-devel@lists.openwrt.org>; Wed, 10 Jun 2020 14:08:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=cjM164bRI3jD6cITTigYKCXHI0EkufyUDv13ZXEizQo=;
 b=hSri3PfzG1mdzod2Relfl/qQtLzLdhGndKd71p7L2aFRXIjLzMc1OEn1qW2bhrFW4l
 iS/FbOBeYI7EwR5DzHlOfeUmafFJ6R9WGl7TCIk2uvf1nttFYDdb1RV9iDrV91YgRG45
 0SvD4QDob3rlaL/w/oyf9FpCpgCuYlCnrhZw73thBP+pVJXOOwf40+7IWNLvXHfj6jC5
 YijLtEbnxJ4Dbpq6H+nsQwbEHkbARpbe7tuSEZi/3hkhB+tdbxZzbPqT59zecL6S4lx+
 ClIQSO9FghIddpo3eqUUnv6IKqOe21jS3VYLXq6//UkOxNhg8LjNtknKPE2O4tROcb1R
 cVfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=cjM164bRI3jD6cITTigYKCXHI0EkufyUDv13ZXEizQo=;
 b=HzcoZImBrWgYWMUQHqMLUjFIJ1rVzoDQBI2HdT5tK+l5Scp9J1DJkDeJYljl68tj93
 JoX9LNpue7SgzzShjpnfs8ghrzFLjWs8KN7N95d+898H6Sbo6wklWLZxWtCPvFY8UhUx
 xD4F7C4XlQzCELoCLBvjlDwlVJOyj6uA6tvSzL2VLHbBsYFY0JkfKVOfvZSwp/ysY6Hc
 Tmz8Jzq21KSIYMDDR7tczWKIK/EC5jZ/PvIszgat6n63/jyEEGFbtm2pJxEcoDfeM+G9
 UZitN3zTCYwaRouhmlF2h8B7cpsmzZJp6Zxz/F0ZZj6bjG5zQ5ws30U3bJ+boexLt26Z
 T52g==
X-Gm-Message-State: AOAM530jQi7bxaGk8O7XujCCDwuWbwy+RsWkAmyw8ebtl2PoNdOrr7Cp
 AF+jDOB/+JuLVHA+42JBvo8giMZ9TCFIkKxHU0efRNk4
X-Google-Smtp-Source: ABdhPJytXBLGYqCiw9TMkyrkNlHf9uTtbjnLFWRIYAUihw9DZESqHHyAQ4CgZcb/yILDgIFbRJXpHjRDXxWuURfEyQk=
X-Received: by 2002:ae9:ed87:: with SMTP id c129mr4817045qkg.383.1591823306983; 
 Wed, 10 Jun 2020 14:08:26 -0700 (PDT)
MIME-Version: 1.0
From: Robert Marko <robimarko@gmail.com>
Date: Wed, 10 Jun 2020 23:08:16 +0200
Message-ID: <CAOX2RU7ta748uX7kGypDMPtChyBTTEfH4G46PP0rO4KPXnkweQ@mail.gmail.com>
To: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_140829_114306_59CB8E10 
X-CRM114-Status: UNSURE (   7.22  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:736 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robimarko[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] fstools mount_root on a non OpenWrt system
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
Content-Type: multipart/mixed; boundary="===============2976439470818947534=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============2976439470818947534==
Content-Type: multipart/alternative; boundary="000000000000c20f3805a7c13e0a"

--000000000000c20f3805a7c13e0a
Content-Type: text/plain; charset="UTF-8"

Hi,
I am trying to utilize fstools mount_root to enable using UBIFS RW overlay
on top of SquashFS on a non OpenWrt based embedded system.

I have used a shell script as the init process that mounts /proc and then
executes mount_root and after that is done calls /sbin/init so systemd will
then be PID1.

Unfortunately, when calling mount_root from the script will cause:
Kernel panic - not syncing: Attempted to kill init! exitcode=0x00000000

Are there any other kernel config requirements other than OverlayFS?

I went through the preinit and I can't find anything relevant other than
simply calling mount_root there.

Thanks
Robert

--000000000000c20f3805a7c13e0a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div>I am trying to utilize fstools mount_root to enabl=
e=C2=A0using UBIFS RW overlay on top of SquashFS on a non OpenWrt based emb=
edded system.</div><div><br></div><div>I have used a shell script as the in=
it process that mounts /proc and then executes mount_root and after that is=
 done calls /sbin/init so systemd will then be PID1.</div><div><br></div><d=
iv>Unfortunately, when calling mount_root from the script will cause:</div>=
<div>Kernel panic - not syncing: Attempted to kill init! exitcode=3D0x00000=
000</div><div><br></div><div>Are there any other kernel config requirements=
 other than OverlayFS?<br><br>I went through=C2=A0the preinit and I can&#39=
;t=C2=A0find anything relevant other than simply calling mount_root there.<=
/div><div><br></div><div>Thanks<br>Robert</div></div>

--000000000000c20f3805a7c13e0a--


--===============2976439470818947534==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============2976439470818947534==--

