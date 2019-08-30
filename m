Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 052B6A3DF6
	for <lists+openwrt-devel@lfdr.de>; Fri, 30 Aug 2019 20:51:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GYhc0VpkIcctUBD47mfDk6XqCiktBPTUJ7c2qZNyPgY=; b=Zqhl6Vi1ZjvnyT
	WgdUUlYo3t73Z2EO0jOv7vXp6W1y0rAoDaPEPCgL35KZE37Km72krcOHcBjBPKvpF/WOnVtTBxUhH
	DPS9Cy5yYFwcQwpj4Xvw6RrR0GJicLZcAfrMacujXi6ACZU2Hz3u1irx0nsDG2hDVxh/XOK8cm+lg
	tmCrPZKWdGnIdtpVWnAA37X8gHZQyduRHAMikGZmznaohAP/LVbYIVsf8kL5tUyckyGotLhtbFa4M
	c7o4dp8ECLb2v/fMclOe+2fet/qGScaXXFgdyxUaPGPUggvnNy51XZjXoJybyqclAe1ZQAFfJ9D3f
	A+MQnPiwBeLT+Wvy2kKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3lzh-0000X1-HP; Fri, 30 Aug 2019 18:51:33 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3lzP-0000WZ-36
 for openwrt-devel@lists.openwrt.org; Fri, 30 Aug 2019 18:51:16 +0000
Received: by mail-wr1-x441.google.com with SMTP id e16so7950039wro.5
 for <openwrt-devel@lists.openwrt.org>; Fri, 30 Aug 2019 11:51:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=xbJWMVxcikdJRYzJULk1BA2PysPcoUz1CUJpRibdmK4=;
 b=mp5suzy9uH1yvF6um8O0W+9W+4d1BP+j2HAhQB4DcbQ/JBGjfLAAKSILluhaWb28oS
 +EBJZaOeHdn9FBYX2Yt/Sb6TsKDO8Yfwmz8pI4BIeIt2q3mcYb7WXM2LbpWec+dEM1GH
 Yt+Gccq4rd1kAaV/PDtncO1+j65/89a8Vb35GQ3cUDnsO095e8KCYMYtKBoCWPXpFQVr
 EsoT1y20OEluJWhHBg6seUjn0KXMkSwrn2r6OG17pA2QtWjpAznNbC9EZPVUWtPePBhw
 w2H3MM6AAxQYrmd2+A5gHmz7CsAkUq3frUjrg7jcuYNJ5uSTl66W8YML5tsJCVurtdkQ
 Gj7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=xbJWMVxcikdJRYzJULk1BA2PysPcoUz1CUJpRibdmK4=;
 b=l2e2NH/zs1zPSydHDhP9sIzBUZvwAV9u0/J4eIu95wvR7kJ+SZyyNwnfK2HqScnjRd
 JIpLM9h/ZSjKoby/pdcfCuR22a2u855MjKgtUzLfOlhE+A41raqBHZgO+AuCX/lupVKf
 AWQqO/vKR6W3w4iWmHoxnjtF7w+gHQKmYZPzjfuL3+nbJh7VNesgtxXC6QLAM0adhx1a
 U+soScnJaUeyaY5+8HjDAYo5kJEhiquihDtKdsHmSi0B+xaRjTBkvyF4UFHOBaZ3OKvC
 m8Tbyicb/8obeiWtUOYtBsBylZUYjmVDRDWxedG9b8NA75s6iyTLCeUqRsgWn6bzg7xp
 kkNQ==
X-Gm-Message-State: APjAAAUHSuLlqqPBADOf0vh6jEkpY4jfOn1aLLJJfsYfTX4EVkaVa/9a
 18WFDXJARlSuid8gj4VzAJ8=
X-Google-Smtp-Source: APXvYqwoqvaNFkBRv6Orq9Upyp1I6Cz1qjlAr7BK8qVtuEMJQDJHpAyJYP4cssPKjDk11YZUF2RsPg==
X-Received: by 2002:a5d:5041:: with SMTP id h1mr3671440wrt.30.1567191072612;
 Fri, 30 Aug 2019 11:51:12 -0700 (PDT)
Received: from debian64.daheim (p5B0D7A2A.dip0.t-ipconnect.de. [91.13.122.42])
 by smtp.gmail.com with ESMTPSA id
 f197sm13708636wme.22.2019.08.30.11.51.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 30 Aug 2019 11:51:11 -0700 (PDT)
Received: from localhost.daheim ([127.0.0.1] helo=debian64.localnet)
 by debian64.daheim with esmtp (Exim 4.92.1)
 (envelope-from <chunkeey@gmail.com>)
 id 1i3lzK-0002Yq-ML; Fri, 30 Aug 2019 20:51:10 +0200
From: Christian Lamparter <chunkeey@gmail.com>
To: Russell Senior <russell@personaltelco.net>
Date: Fri, 30 Aug 2019 20:51:10 +0200
Message-ID: <3012831.exOcdT49RB@debian64>
In-Reply-To: <87lfvc1902.fsf@husum.klickitat.com>
References: <87a7c1qxl2.fsf@husum.klickitat.com>
 <87pnko19pv.fsf@husum.klickitat.com> <87lfvc1902.fsf@husum.klickitat.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_115115_162150_0508E75C 
X-CRM114-Status: GOOD (  13.75  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (chunkeey[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] Squashfs breakage lottery with UBI WAS: [PATCH
 RFC 2/2] amp821xx: use newly added pad-squashfs for Meraki MR24
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
Cc: ynezz@true.cz, openwrt-devel@lists.openwrt.org, mail@adrianschmutzler.de,
 dev@kresin.me, jonas.gorski@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Thursday, August 29, 2019 1:55:25 PM CEST Russell Senior wrote:
> 
> >> Fwiw, I took a little closer look at the squashfs code. I still don't
> >> quite understand it, but I sprinkled some printk()'s and got a better
> >> idea of what is happening.
> >> 
> >> With a root.squashfs of 6428672 bytes, we get the error in a call:
> >
> > Actually, the 6428672 bytes was from a later trial. Sorry for the
> > confusion. I'm not sure what the real root.squashfs size was
> > anymore. Gah. I'll need to redo it.
> 
> Here are the corresponding numbers from the retry:
> 
> root.squasfs size (from the sysupgrade.bin tarball): 6427978 bytes
> 
> squashfs_read_data(sb=(ptrval),index=0,length=6427970,next_index=16777224,output=(null))
> b=0; bytes=-322; length=8; cur_index=0
> 
> >> 
> >>   squashfs_read_data(sb=(ptrval),index=0,length=6427986,next_index=16777224,output=  (null))
> >> 
> >> it enters the loop at fs/squashfs/block.c:122 with b=0; bytes=-338; length=8; cur_index=0
> >> 
> >>     for (b = 0; bytes < length; b++, cur_index++) {
> >>         bh[b] = sb_getblk(sb, cur_index);
> >>         if (bh[b] == NULL)
> >>             goto block_release;
> >> 
> >> sb_getblk() must return NULL, because it goes to block_release and falls
> >> through to print the error message and exits with an error.
> 
Ok.

I did push a patch titled:
"build: remove harmful -nopad option from mksquashfs"
<https://git.openwrt.org/?p=openwrt/openwrt.git;a=commit;h=1c0290c5cc6258c48b8ba46b4f9c85a21de4f875> 

so, let's see if this triggers more undefined behaviour 
and exposes more hidden broken code.

Regards,
Christian



_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
