Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 29A9B1D8DAB
	for <lists+openwrt-devel@lfdr.de>; Tue, 19 May 2020 04:37:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CGXUash7SuL0L/C0me6PeFb74IQM9zHDuZMbYo9QUgY=; b=ScRFoZxRlKH0Wb
	Twsbh4CqxGd43Vz+OQgv7nxfXZQWHIqNpwbS5HCRmiukvrvbp4NjeR1Y/o+b4y9YvwSUiBUha9IJx
	4pE0ZO8TKstd9zjqM48JSQTQ0JUxV7vmolkzv3MWpjCxd/l7H+iGHeYLfA7YFwGRWAmM/xjzaRrwK
	8N+RVnW0XOvdws8yc44/52YoKEq48ni2kJx1M+DmhaBkpvvwSI9udtNbllPJQIkYEaWC4wzj1GQWx
	43oBhdY3qHQ1fyYdj3mIbUyrMzK6amn4PMuTeWRLN58UNVylA+9sr1dbB8jSeqwKViWIn8In3JmID
	VuAZeeTLXrUL3CnGUg+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jas8I-0004Kl-Hb; Tue, 19 May 2020 02:37:30 +0000
Received: from mout.web.de ([217.72.192.78])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jas88-0004K6-Cp
 for openwrt-devel@lists.openwrt.org; Tue, 19 May 2020 02:37:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=web.de;
 s=dbaedf251592; t=1589855833;
 bh=o7ZYI5IB5jVom9RvmnlJt4LXB0ajdDF4sGBrNlrcQTU=;
 h=X-UI-Sender-Class:Subject:To:References:From:Date:In-Reply-To;
 b=ou9au68DJCgoabnVn6RmJuGKCSjilO3cZHZe0Rxj0hm8D9vG9m6pPw5HBNsifShSO
 Pou0UaCROa2VsrGLWhtz9tCiY5ai6LjKKxyPLdEteuTB50+6yDBj5v6oa8gjdYNCNj
 BU8ejZ6Vh3HpyaBlfIzAl+GxGEdby+9q9zcf1V4g=
X-UI-Sender-Class: c548c8c5-30a9-4db5-a2e7-cb6cb037b8f9
Received: from [192.168.178.202] ([185.220.70.231]) by smtp.web.de (mrweb103
 [213.165.67.124]) with ESMTPSA (Nemesis) id 0M6DyQ-1iqDYJ24mw-00yDKm for
 <openwrt-devel@lists.openwrt.org>; Tue, 19 May 2020 04:37:13 +0200
To: openwrt-devel@lists.openwrt.org
References: <CALYKT1hk3-kyD5xifS1QGYE5dy5rR9Jn0HjojxCbe5yDcjAxkw@mail.gmail.com>
 <CALYKT1j=15WNV+H54qX=zT8K93GoCvs5h-VUzVvRBmzAGtfrKA@mail.gmail.com>
 <CAAP7ucKtq2tiJRVMFjr5zx=NCG6=-507wyNhP18hm0Y0gAkj8Q@mail.gmail.com>
 <CALYKT1jgbSGaU++m4jbfZfnP=ecivEQ2tFRb6qpd26TZWmjJzg@mail.gmail.com>
 <CALYKT1ibXO1x96TZWxcEhmtTWwPPPFN+WPRwpYfLfULNt_edGg@mail.gmail.com>
 <CAAP7uc+mTnEbE8HSNghweu3uUYG97RrttrP4UuawokA6a1QYvg@mail.gmail.com>
 <CALYKT1jGSUNb1gPKczz8nVY2J84dBZFRY586P+OSnLNTj4Fxkg@mail.gmail.com>
 <CAAP7ucJ5qwJ+4cy_v4sEnULdD9g-D8w=5Ze7d8kubK9RZFLiQQ@mail.gmail.com>
 <CALYKT1hT=0G6ip3__-pttHVr-7Vc1rOUFBnsZFc9jCnx_uu4Wg@mail.gmail.com>
 <CALYKT1h8FF5jQsS7ereCS71rT4aywZrwr+ZjNHSPghQgqx+R8g@mail.gmail.com>
 <CAAP7ucKeVq3N0RJhez45o7g0jkRenPvDUVazRy2CCm3cK64xQg@mail.gmail.com>
 <CALYKT1gNQncwkrLR_Teb1Ak2fYzohd5E0Do79kR+aWA2eVxxkQ@mail.gmail.com>
 <CALYKT1ho94oFRCUr=ujBH1vzZc5vQrTWY1Az91HkKS_F12AivQ@mail.gmail.com>
 <CALYKT1jytZ0SmMEWc-84Fjp-oSSYvb+UmR8X3gF4BugVrbZLrw@mail.gmail.com>
From: Moritz Warning <moritzwarning@web.de>
Autocrypt: addr=moritzwarning@web.de; prefer-encrypt=mutual; keydata=
 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
Message-ID: <8a3e98a9-07e5-045d-d711-0a5833dcb5cc@web.de>
Date: Tue, 19 May 2020 04:36:27 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <CALYKT1jytZ0SmMEWc-84Fjp-oSSYvb+UmR8X3gF4BugVrbZLrw@mail.gmail.com>
Content-Language: en-US
X-Provags-ID: V03:K1:voaakJ0eXOMEfjDnTeG/ymZtWXK0BvFLFlKgZvBj9AG5NTCZ12S
 suvLohbR8cA53odu6wuBqBXE0MtqjHShUVg/ZZdFkrZwZDiiDBXZEI+fBWOzBHDmjwpsKDi
 hmPF6pcPYTBDXUd81Bz5ZbwcSoq37iBUm2Ar7iNRJSnirgGHfAYacwAl/9MhhdfleoKBjD5
 Ki7+EKYQfiLc9Rd4RzcTA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:7Cg56fjRC1I=:S/281jMBiXc4tDLv5/I0JS
 STSeXuqqolc3psA6J+ZNcca6rcvS6+pYMxwgGm8t6cCveZh8ZBNOIaz2763dYQfQ0+MHD+Xg1
 0HDWtFYNDnrNtsp1uPCqbn96cOyA39DhpGC9h9UVnYiJePV8677UmqtocrOdvyYbXe4MfvV6j
 8S+81Wb3NpjuneyfEIy5PAtsvb48wuwGeb709Y2fHx5I+1Ehcxdfhr2BHXtpuf2PPmQ79M9jC
 8bGCZEnfeCR5GYUmeRm6A584TUvDDdzb/9vvtwrYPzfXtBTD78Q/suFLr7NOuILyvhlJ3cbCp
 9cDPw/FRIJ52hjg5Q613bckxC5EBqnU5X8CcnRl1kh0qA4ErrW0cCahaoNA+RTfiCT1ps8M1e
 RPXC/YAoD+tGN9Q67mOFOdoNpGToOgZi7CtzpmJcIkJmZs0fpcVPJs6pcPy5WTB3l5kCfOXAm
 Fnd98hq5ryINdtSR/PAFsqFSVF75OBURYX7QLFOpe1tsw3Zm7ExODyT4hZ7myTs4Ry80tijKv
 7FY63Fv34HIVfddEVuWS59VF5wPuYvaCrwZ+soPJEVUeexL5QlNqr+BTVLn0ERIGEP1+51veT
 KH6AMPIomBnhatZqz9NJYWSM6EYIvF8nrqAIRD4TP2GoGyBsu97l2esoGgwSZIlxH0HTaBfts
 whZPp0/T5ml/FMXyL/fHaAnn/B/pbZ22Gmdx4Wj0Bt0Vs/Bbdm9xczueeJV8rJWfAJJrjd4SA
 f4E+LSCY1WhTmihnOq/JOXIyMzGJNli4Xa7hhduUDDNPvH2zidyMnNGTz/hNnyxcXLFLn5i+L
 IHDYoiCM3x3H4zAxDJGzeOdK1ssGaYCAswTl/EcmdUktmp2IlCibqMfFnzqspHSu4nfZ699LZ
 I8YOCbzgQqi+D3EPQbWFcEf4PvEaodpuuJkkU+v0DWVjRnDikonmhzyhgbVaDcKVbXUAwz68r
 PBjoWn2sxUSIVG/f3rn5MWIlp9brEK0+RUsAZVHgBOlJ4UUtCu/3S8tzD7o7Tt6vlD5a1G3r9
 x3bhHaLs6ufLxFtm9sbJr+5GmAU31vvb2r8/GCc8FGYkg7RZ7iDCeH2Vh9AoYZ90t1nMJvOt0
 x+393bXYcrbd6nBPVATzXIOIex+DM0tBb6ZreGcq1PjORcccJggkCoxtNJyayJlZH8bj/62t1
 8IIN/jwR2KFvr6cyob9mbJGCqinLPA5tCHq8Du6Tw2caAkINivGlKAv2J8YV6VTL2tSTsPgUk
 TAGZeg5ONBjZKKj1u
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_193720_771471_D2018E4D 
X-CRM114-Status: GOOD (  12.51  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.72.192.78 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [moritzwarning[at]web.de]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [217.72.192.78 listed in wl.mailspike.net]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
Subject: Re: [OpenWrt-Devel] How am I supposed to change settings in
 /etc/config/network of default root file system of OpenWRT?
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On 5/19/20 3:49 AM, Jeonghum Joh wrote:
> I know how to do this for /etc/config/firewall.
> It is package/network/config/firewall/files/firewall.config
>
> But I cannot find /etc/config/network for default root file system.
>
> Where can I find it?
> How am I supposed to change settings in /etc/config/network of default root
> file system of OpenWRT?
>
> Thank you in advance!
>
> Jeonghum
>
>
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel
>

In your OpenWrt build root, create a file "files/etc/config/firewall".
When you build OpenWrt, the file will be included in the image (and not overwritten).

Btw., /etc/config/network is generated by a script on first boot and that is then deleted.
But it is still accessible in /rom/etc/uci_defaults/02_network (not quite sure on the script name).

- mwarning

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
