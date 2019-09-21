Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E7A1BB9BED
	for <lists+openwrt-devel@lfdr.de>; Sat, 21 Sep 2019 03:57:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=6lYKfcA9mGQTkVk8M69Hs4KvXQuEVGnjUopW0pRGOgc=; b=rtGBVdS4Z+xqj7zIrioC5iaXM
	/b4GDV3gWC4dtbb9TYjme6EKca8an3+3MSHo0uy6eCY2M+kFXNx/qB613x9Y+wXs/1LeZOzLXc37R
	gRzvgUBEG2FNqYYbu5hAvk75lRY8cC5P4Vf9fwIFbjG6Qd5c5Xk+TLjtwknHQlyfHLpXXaN2ml3gW
	ryhaLlPnJ7Jn2pheKYu2JiaFE3HZibkTgNV6Xzh4wkQftA40fEMyOaWIqw8kdbqzHGen90mfuzwGQ
	LvtsrewzV/qEGNeRMuevZmkZhUU4YwJv8vCnA1jKOMicsTX9aaaCbGyUUVlqhx5O6lJ6pyx2e/hqM
	lhwrP766Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBUem-0003Ee-1S; Sat, 21 Sep 2019 01:57:52 +0000
Received: from mail-ua1-x943.google.com ([2607:f8b0:4864:20::943])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBUee-0003E5-N6
 for openwrt-devel@lists.openwrt.org; Sat, 21 Sep 2019 01:57:47 +0000
Received: by mail-ua1-x943.google.com with SMTP id n63so2844210uan.2
 for <openwrt-devel@lists.openwrt.org>; Fri, 20 Sep 2019 18:57:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=personaltelco-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=rJ7odiHwApEoufQ9XfcSiTlPWnhEZr14xoqYcO8nXQw=;
 b=r2Nbl7pCUxe8XheaxEvU2vD0aaoquig8vb7pggfNAJxRpXXTOh7iQZ/+X/mV2vwtuR
 Vmt51/CCCTYwg3XDJwM6raDMgZFbTdgcKyHyf84gnndEbBUOHQ8nCPH+puVx4/k9o3cC
 +/g9V2BXysoJYGbGTyzhxVF+ReUETHiASjG5b9ypWLBEfTgC0CBJtc9DFTyQ3ZWAMZP6
 UrBrcILN8LZwHpi7qHNwkmxUc95W52u7PdcmcMbqvk306Tp9Z7J+cuCywWeIL7WMteeR
 F/yFVo/iKjtKMyWfLj3UUWx/fYbqgYSP0ERN3bLhqSu80uyxY5OpUcIXKGZXdT+bYfEx
 2ENw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=rJ7odiHwApEoufQ9XfcSiTlPWnhEZr14xoqYcO8nXQw=;
 b=jMYb1LQ2Ieqoz2Gykfuv4JhIosV3GT0tPcNn2gSSurgP2rVbspAwLsGywJXfDWg5cF
 SY9u63HQE9s0tg088Uygj84omI5sgg4bqlL7aAIDcBWCVuUnjNIndJYKclTWYkcCkn/I
 X6DQQdxfuuzyYd5nnYwXhtCQMN2obdn8vTtym7qgPjBlUiGLSuHdzC5STMstCQXw/CYn
 Z95BBa2Mi2fAu8xYIb0bUNNBCH8ESHAnP9Fx+sechZLd4NCZlnQhgKscnWujeUPyjW2o
 JhJ1v2pGzZD6STPgjoGvGRUJXqFTconPoegHkhsKrVQQ+cS/xR6wE3PfBzoev40j05C6
 H/6g==
X-Gm-Message-State: APjAAAV8TpIDHNflbPhnatedCCAx7G346+03N8dxsReryH+5VJ8OQ303
 eDe7n0Rmpw/4RtKpJVYKPsiuAWt6vYYI6H1wG1hx2g==
X-Google-Smtp-Source: APXvYqx30CrZV5AzeG5p/81sO7vOfri+J0rHdnw3skmNWUqmcvzNBPi7nge/8DBSRqrZGnSRSSfqNmnYXhGsp51QtuM=
X-Received: by 2002:ab0:1446:: with SMTP id c6mr2094110uae.120.1569031060623; 
 Fri, 20 Sep 2019 18:57:40 -0700 (PDT)
MIME-Version: 1.0
References: <87imprcybz.fsf@husum.klickitat.com> <1650711.Cc8WsVpOxL@debian64>
In-Reply-To: <1650711.Cc8WsVpOxL@debian64>
From: Russell Senior <russell@personaltelco.net>
Date: Fri, 20 Sep 2019 18:57:29 -0700
Message-ID: <CAHP3WfPEfwWQDM0_Lc1GowbQXN3m5RKEEWuXi_vxoVxguk1fNw@mail.gmail.com>
To: Christian Lamparter <chunkeey@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190920_185744_934299_74400433 
X-CRM114-Status: GOOD (  29.48  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:943 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH] apm821xx: for Meraki MR24 modify
 BLOCKSIZE to reduce LEB over-allocation
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
Cc: openwrt-devel@lists.openwrt.org, Chris Blake <chrisrblake93@gmail.com>
Content-Type: multipart/mixed; boundary="===============1084479472392867682=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============1084479472392867682==
Content-Type: multipart/alternative; boundary="00000000000002aabb0593068356"

--00000000000002aabb0593068356
Content-Type: text/plain; charset="UTF-8"

On Fri, Sep 20, 2019 at 1:35 PM Christian Lamparter <chunkeey@gmail.com>
wrote:

> Hello,
>
> On Tuesday, September 17, 2019 6:59:28 AM CEST Russell Senior wrote:
> > On Meraki MR24, the BLOCKSIZE variable is used to allocate space for the
> > kernel blob. The LEB size on MR24 is 15.5k (15872 bytes). In the
> > particular instance observed, it was found that reducing blocksize to
> > 512 bytes resulted in 3 fewer LEBs being allocated to the kernel ubi
> > volume, with no ill effects.
> >
> > Signed-off-by: Russell Senior <russell@personaltelco.net>
> > ---
> >  target/linux/apm821xx/image/Makefile | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/target/linux/apm821xx/image/Makefile
> b/target/linux/apm821xx/image/Makefile
> > index 8203de39c5..1aa4e0dad3 100644
> > --- a/target/linux/apm821xx/image/Makefile
> > +++ b/target/linux/apm821xx/image/Makefile
> > @@ -127,7 +127,7 @@ define Device/meraki_mr24
> >    DEVICE_PACKAGES := kmod-spi-gpio -swconfig
> >    BOARD_NAME := mr24
> >    DEVICE_DTS := meraki-mr24
> > -  BLOCKSIZE := 63k
> > +  BLOCKSIZE := 512
> >    IMAGES := sysupgrade.bin
> >    DTB_SIZE := 64512
> >    IMAGE_SIZE := 8191k
>
> The value looks odd, since UBI volumes are always a multiple of the LEB
> size
> and the documentation we have
> <https://openwrt.org/docs/techref/flash.layout#discovery_how_to_find_out>
> states that "The erasesize is the block size of the flash [...]".
> so in that regard BLOCKSIZE could be 15872 or 16 KiB (if we would stick to
> the real, raw value of the flash).
>

The only thing BLOCKSIZE is used for (afaict, for MR24) is in
bs=$(BLOCKSIZE) while generating the kernel blob (which includes a header
and a device tree binary as well). The DTB_SIZE is to align the device tree
and kernel at particular addresses. The sysupgrade infrastructure
(package/base-files/files/lib/upgrade/nand.sh) on the device deals with ubi
volume creation, and it's going to allocate LEBs to volumes to minimally
accommodate the file that is provided to occupy that volume. We could just
concatenate the kernel with no blocking at all, and it would work fine.
The section you are referring to is talking about the mtd layer, not ubi.


>
> But I don't think a generated image with these parameters would boot
> anymore.
>

Which parameters? I've tested 512 and it boots fine.


> As the problem here is hidden in "MerakiAdd-dtb" step that is used
> generate the
> KERNEL (for sysupgrade) relies on that  BLOCKSIZE value being a integer
> divisible
> of the 63KiB value. Since this magic value (63KiB) is needed to place the
> DTB+kernel at the correct offsets for mkmerakifw.
>

No, the device tree and kernel are placed in the "right spots" (the ones
expected by u-boot) because of the DTB_SIZE variable. There is a header,
the device tree at offset 1k, and the kernel starts at offset 64k.

define Build/MerakiAdd-dtb
        $(call Image/BuildDTB,../dts/$(DEVICE_DTS).dts,$@.dtb)
        ( \
                dd if=$@.dtb bs=$(DTB_SIZE) conv=sync; \
                dd if=$@ bs=$(BLOCKSIZE) conv=sync; \
        ) > $@.new
        @mv $@.new $@
endef

That second dd could be "cat $@" and I think it would work (but haven't
tested), because the blocking of the kernel is not important.


>
> so, what to do? Because it's possible to get rid of the whole logic as
> well as the
> MR24 portion of the mkmerakifw by refactoring the u-boot boot commands to
> just load
> and boot a multi-file image. The framework is all there since the
> initramfs image is
> already utilizing "MuImage-initramfs". This would save even more since
> this makes it
> possible to also shrink down the DTB as well. As the "raw" information in
> there is
> just around 10k-15k and the rest of this is fluff. (Some of this fluff is
> needed by
> u-boot though. As it needs some space (probably less than 128 bytes) of
> this area to
> "add" in values for frequencies and ranges. So it can't be completely
> removed like
> with newer u-boots).
>

It seems like the current u-boot-env variables won't support that and it's
not clear how to guarantee the u-boot-env is set up before you flash the
new image style. It seems much safer to just stick with the current layout
for now.


>
> So, Would you be willing to do this?
>
> Regards,
> Christian
>
>
>

--00000000000002aabb0593068356
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div><div dir=3D"ltr" class=
=3D"gmail_attr">On Fri, Sep 20, 2019 at 1:35 PM Christian Lamparter &lt;<a =
href=3D"mailto:chunkeey@gmail.com">chunkeey@gmail.com</a>&gt; wrote:<br></d=
iv><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bord=
er-left:1px solid rgb(204,204,204);padding-left:1ex">Hello,<br>
<br>
On Tuesday, September 17, 2019 6:59:28 AM CEST Russell Senior wrote:<br>
&gt; On Meraki MR24, the BLOCKSIZE variable is used to allocate space for t=
he<br>
&gt; kernel blob. The LEB size on MR24 is 15.5k (15872 bytes). In the<br>
&gt; particular instance observed, it was found that reducing blocksize to<=
br>
&gt; 512 bytes resulted in 3 fewer LEBs being allocated to the kernel ubi<b=
r>
&gt; volume, with no ill effects.<br>
&gt; <br>
&gt; Signed-off-by: Russell Senior &lt;<a href=3D"mailto:russell@personalte=
lco.net" target=3D"_blank">russell@personaltelco.net</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 target/linux/apm821xx/image/Makefile | 2 +-<br>
&gt;=C2=A0 1 file changed, 1 insertion(+), 1 deletion(-)<br>
&gt; <br>
&gt; diff --git a/target/linux/apm821xx/image/Makefile b/target/linux/apm82=
1xx/image/Makefile<br>
&gt; index 8203de39c5..1aa4e0dad3 100644<br>
&gt; --- a/target/linux/apm821xx/image/Makefile<br>
&gt; +++ b/target/linux/apm821xx/image/Makefile<br>
&gt; @@ -127,7 +127,7 @@ define Device/meraki_mr24<br>
&gt;=C2=A0 =C2=A0 DEVICE_PACKAGES :=3D kmod-spi-gpio -swconfig<br>
&gt;=C2=A0 =C2=A0 BOARD_NAME :=3D mr24<br>
&gt;=C2=A0 =C2=A0 DEVICE_DTS :=3D meraki-mr24<br>
&gt; -=C2=A0 BLOCKSIZE :=3D 63k<br>
&gt; +=C2=A0 BLOCKSIZE :=3D 512<br>
&gt;=C2=A0 =C2=A0 IMAGES :=3D sysupgrade.bin<br>
&gt;=C2=A0 =C2=A0 DTB_SIZE :=3D 64512<br>
&gt;=C2=A0 =C2=A0 IMAGE_SIZE :=3D 8191k<br>
<br>
The value looks odd, since UBI volumes are always a multiple of the LEB siz=
e<br>
and the documentation we have<br>
&lt;<a href=3D"https://openwrt.org/docs/techref/flash.layout#discovery_how_=
to_find_out" rel=3D"noreferrer" target=3D"_blank">https://openwrt.org/docs/=
techref/flash.layout#discovery_how_to_find_out</a>&gt;<br>
states that &quot;The erasesize is the block size of the flash [...]&quot;.=
<br>
so in that regard BLOCKSIZE could be 15872 or 16 KiB (if we would stick to<=
br>
the real, raw value of the flash).<br></blockquote><div><br></div><div>The =
only thing BLOCKSIZE is used for (afaict, for MR24) is in bs=3D$(BLOCKSIZE)=
 while generating the kernel blob (which includes a header and a device tre=
e binary as well). The DTB_SIZE is to align the device tree and kernel at p=
articular addresses. The sysupgrade infrastructure (package/base-files/file=
s/lib/upgrade/nand.sh) on the device deals with ubi volume creation, and it=
&#39;s going to allocate LEBs to volumes to minimally accommodate the file =
that is provided to occupy that volume. We could just concatenate the kerne=
l with no blocking at all, and it would work fine.=C2=A0 The section you ar=
e referring to is talking about the mtd layer, not ubi.<br></div><div>=C2=
=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8e=
x;border-left:1px solid rgb(204,204,204);padding-left:1ex">
<br>
But I don&#39;t think a generated image with these parameters would boot an=
ymore.<br></blockquote><div><br></div><div>Which parameters? I&#39;ve teste=
d 512 and it boots fine.<br></div><div>=C2=A0</div><blockquote class=3D"gma=
il_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,2=
04,204);padding-left:1ex">
As the problem here is hidden in &quot;MerakiAdd-dtb&quot; step that is use=
d generate the<br>
KERNEL (for sysupgrade) relies on that=C2=A0 BLOCKSIZE value being a intege=
r divisible<br>
of the 63KiB value. Since this magic value (63KiB) is needed to place the<b=
r>
DTB+kernel at the correct offsets for mkmerakifw.<br></blockquote><div><br>=
</div><div>No, the device tree and kernel are placed in the &quot;right spo=
ts&quot; (the ones expected by u-boot) because of the DTB_SIZE variable. Th=
ere is a header, the device tree at offset 1k, and the kernel starts at off=
set 64k.</div><div><br></div><div>define Build/MerakiAdd-dtb<br>=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 $(call Image/BuildDTB,../dts/$(DEVICE_DTS).dts,$@.dtb)<br=
>=C2=A0 =C2=A0 =C2=A0 =C2=A0 ( \<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 dd if=3D$@.dtb bs=3D$(DTB_SIZE) conv=3Dsync; \<br>=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 dd if=3D$@ bs=3D$(BLOCKSIZ=
E) conv=3Dsync; \<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 ) &gt; $@.new<br>=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 @mv $@.new $@<br>endef</div><div><br></div><div>That s=
econd dd could be &quot;cat $@&quot; and I think it would work (but haven&#=
39;t tested), because the blocking of the kernel is not important.<br></div=
><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px=
 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
<br>
so, what to do? Because it&#39;s possible to get rid of the whole logic as =
well as the<br>
MR24 portion of the mkmerakifw by refactoring the u-boot boot commands to j=
ust load<br>
and boot a multi-file image. The framework is all there since the initramfs=
 image is<br>
already utilizing &quot;MuImage-initramfs&quot;. This would save even more =
since this makes it<br>
possible to also shrink down the DTB as well. As the &quot;raw&quot; inform=
ation in there is <br>
just around 10k-15k and the rest of this is fluff. (Some of this fluff is n=
eeded by<br>
u-boot though. As it needs some space (probably less than 128 bytes) of thi=
s area to<br>
&quot;add&quot; in values for frequencies and ranges. So it can&#39;t be co=
mpletely removed like<br>
with newer u-boots).<br></blockquote><div><br></div>It seems like the curre=
nt u-boot-env variables won&#39;t support that and it&#39;s not clear how t=
o guarantee the u-boot-env is set up before you flash the new image style. =
It seems much safer to just stick with the current layout for now.<br></div=
><div>=C2=A0</div><div class=3D"gmail_quote"><blockquote class=3D"gmail_quo=
te" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204=
);padding-left:1ex">
<br>
So, Would you be willing to do this? <br>
<br>
Regards,<br>
Christian<br>
<br>
<br>
</blockquote></div></div>

--00000000000002aabb0593068356--


--===============1084479472392867682==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============1084479472392867682==--

