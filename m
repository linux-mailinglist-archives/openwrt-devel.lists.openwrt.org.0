Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B43021BB419
	for <lists+openwrt-devel@lfdr.de>; Tue, 28 Apr 2020 04:45:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ksPpwX49hSgkfuWg9BVc6FuvKbVQ32VD2UjKSgdE9bg=; b=VETgMMDQPzo3q//15enYIHTH5
	GbmYbocUzQKj0r3DCmRCJa/GDJeOQHs1cKXlWsO7VKLoAdn3WFsfL4bpEDAuvqSia2HGD9tJnEyWo
	TYFr5gDq7PpXEqO7OH5YALlpU35Q/nX26kiJzRuq+HJGDoGO6gcgnO5bERQBEdBavfnLlHOkSz3u+
	R0BNmRBs7apnltO+u2hzJRWF5WzMRZcWvtLh9rWeoULHAbkcLXq9LbjlXtcnnAT49XbK2GTiL0tKL
	RL4EMyg1fQ8uCIb+dxFEY0aZaD2wOG7rPhHiwABJ9NM2loCDgec9C6lL4RKKS1g4i/vKE4qygRPBq
	InufBFwnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTGFF-0003qk-Cu; Tue, 28 Apr 2020 02:45:13 +0000
Received: from mail-ej1-x62d.google.com ([2a00:1450:4864:20::62d])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTGF7-0003pv-NB
 for openwrt-devel@lists.openwrt.org; Tue, 28 Apr 2020 02:45:07 +0000
Received: by mail-ej1-x62d.google.com with SMTP id x1so15934652ejd.8
 for <openwrt-devel@lists.openwrt.org>; Mon, 27 Apr 2020 19:45:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=TLxetytwwGcFYSfC8IsS1sZB44iD3Zvj7LxZ0AV8zgs=;
 b=uQ5bgZC5N2oSJ71Z0Tg+db71fdF3eRCGqAYZmR9FJ9h479XzJ7EfwPETAbTAtwhL5i
 CzceBCdUliKXipSwBZecBUdOJ7xy1+x5VIz5dctiWKuDvMHNHbDVWalnP47FGD5Jk+h8
 aoQGxc+1CPau4LbM73ZIOoxeH6uImSMp+VqQWg0WZ2qcRRTLa9RX+N59x+zkyXN+VHec
 xpIAUV9BW2tGnIU5PUuIiBqnwjIokhvnbkibN3QD202wPtn2K9zAwDfZO7oLWa5WGxs5
 bOK61Wk+AT6x6maLJOCiZ8zN6e5NmmFxa7KBTZ0iwYEIG9txPIM7oPG9mlVz5UUZTLd/
 Hzbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=TLxetytwwGcFYSfC8IsS1sZB44iD3Zvj7LxZ0AV8zgs=;
 b=sOcz8BCtJ6xIblWRyKNDYBJffFOyHQJYC0RK1gV/ZRTITsykM5XjG9kn1LQk+K5Zhx
 ItFocy3qqgG1L7eaS2b3tNziVM+0Yr2YtnQL7AHwzfINc99e1vTpn9xZkknMZIkxmr8H
 CRne7O0SVZIAyrWwdFnj/4TP4jLR4rDCKx2IFuDTN+He2VPiZ/me6L/l03LJY8WehE2s
 as/qznSBBjcQe3S/LCaJd0iDgk1hReCFkGqlUkz+Bu0vlao/P6v9dVgPCEowQfDhVx67
 T51+1rAc5xt8sGpDLqaSmJey9mjy9LAKyC1yeBMbxlSNga2/d4iu3cqjjVdxuISOq93f
 3mZg==
X-Gm-Message-State: AGi0PubABIk2mSc1Jc5fvFIzAK08RSUS9+W8UPv9pzJXLJgirxMXrg2R
 No362nghJyFVwzX3dMjBzcK1Zm52X9l9O4vHzwi6p/6FOjo=
X-Google-Smtp-Source: APiQypJjLA72fLifbtHGCwhS/ljJZV3bNahtduRIUb2SAiqixzvNeZJCIhUq7TWVqS/XhOVOhciHT1U1VGq6S4jobL8=
X-Received: by 2002:a17:907:40f2:: with SMTP id
 no2mr7069675ejb.41.1588041903967; 
 Mon, 27 Apr 2020 19:45:03 -0700 (PDT)
MIME-Version: 1.0
References: <CALYKT1jbVZ_YkHVZzJ2-CFb=8RxzjmtZM9R1CRhM86=AjC6jFw@mail.gmail.com>
 <877dy1xfq3.fsf@miraculix.mork.no>
 <CAJQUmm7-tfDJ32BAjpTu9ygG4xO-K1BfpBxRS61inO+qZC_V8g@mail.gmail.com>
In-Reply-To: <CAJQUmm7-tfDJ32BAjpTu9ygG4xO-K1BfpBxRS61inO+qZC_V8g@mail.gmail.com>
From: Jeonghum Joh <oosaprogrammer@gmail.com>
Date: Tue, 28 Apr 2020 11:44:50 +0900
Message-ID: <CALYKT1hUcHTnm3s9KuNJ7E04hrqBxKX9DbH=9euzpc7ZyTCwxA@mail.gmail.com>
To: Michael Jones <mike@meshplusplus.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_194505_781128_DF6D3B37 
X-CRM114-Status: GOOD (  15.50  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:62d listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [oosaprogrammer[at]gmail.com]
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] Advice needed - Proper approach to port 5G/LTE
 modem into OpenWRT
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
Cc: openwrt-devel <openwrt-devel@lists.openwrt.org>,
 =?UTF-8?Q?Bj=C3=B8rn_Mork?= <bjorn@mork.no>
Content-Type: multipart/mixed; boundary="===============7525147933580210187=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============7525147933580210187==
Content-Type: multipart/alternative; boundary="00000000000093106305a450d121"

--00000000000093106305a450d121
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello Michael,

Thank you for sharing the helpful url. I guess mwan3[1] would deal such
daemons - netifd and hotplug.d. Isn't it? If mwan3 deals with those, I
guess I only need to utilize mwan3. Am I right?

Thank you for answering my questions.
Jeonghum

[1] https://openwrt.org/docs/guide-user/network/wan/multiwan/mwan3

2020=EB=85=84 4=EC=9B=94 28=EC=9D=BC (=ED=99=94) =EC=98=A4=EC=A0=84 1:12, M=
ichael Jones <mike@meshplusplus.com>=EB=8B=98=EC=9D=B4 =EC=9E=91=EC=84=B1:

>
>
> On Mon, Apr 27, 2020 at 7:42 AM Bj=C3=B8rn Mork <bjorn@mork.no> wrote:
>
>> Jeonghum Joh <oosaprogrammer@gmail.com> writes:
>>
>> > I am porting a 5G/LTE modem into OpenWRT.
>>
>> Follow the instructions for LTE modems.  A 5G modem is pretty much the
>> same wrt drivers and basic management.  At least for Qualcomm based
>> modems on a USB bus.  Have no experience with anything else.  The Intel
>> and Huawei modems are competely unknown to me, and most likely
>> unsupported for the forseeable future.  And I'm also blank on the magic
>> of Qualcomms PCIe interface. Qualcomm did work on a driver, but it's
>> been a long time since I saw any update on that.  I guess no one cares
>> enough.  SuperSpeed USB is fine for most users for now.
>>
>> Anyway, several X55 based modems are already supported out of the box in
>> OpenWrt master.  There is no need to reinvent the wheel if you are using
>> one of those.
>>
>> You may obviously decide to implement your own alternative solutions,
>> like using some vendor software. But that will limit the user community
>> severely. At least until the solution attracts more users.  And
>> community support depends on users, which I believe is something you
>> should consider since you have ended up in this forum.  You are unlikely
>> to find anyone here who have any experience with your particular vendor
>> software version.
>>
>> Personally, I am happy to give advice about anything regardless of
>> experience.  But the quality of that advice is probably a tiny bit
>> better when it is based on something I've tried myself.  Or maybe not?
>> Is probably bad in any case.
>>
>>
>> Bj=C3=B8rn
>>
>>
> @Jeonghum Joh
>
> If you decide to use the connection management software that the vendor
> supplied, you'll want to integrate it into Netifd and Hotplug.d to ensure
> appropriate cross communication with things in the OpenWRT system.
>
> Please look at this file to see an example of how that is done:
> https://github.com/openwrt/packages/blob/master/net/modemmanager/files/mo=
demmanager.proto There's
> a whole rabbit hole that you can follow on this topic to get every detail
> right, but it's probably sufficient for your purposes to get the high lev=
el
> details, and then let the OpenWRT stack take care of the rest.
>

--00000000000093106305a450d121
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello Michael,<div><br></div><div>Thank you for sharing th=
e helpful url. I guess mwan3[1] would deal such daemons - netifd and hotplu=
g.d. Isn&#39;t it? If mwan3 deals with those, I guess I only need to utiliz=
e mwan3. Am I right?</div><div><br></div><div>Thank you for answering my qu=
estions.</div><div>Jeonghum</div><div><br></div><div>[1]=C2=A0<a href=3D"ht=
tps://openwrt.org/docs/guide-user/network/wan/multiwan/mwan3">https://openw=
rt.org/docs/guide-user/network/wan/multiwan/mwan3</a>=C2=A0=C2=A0<br></div>=
</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">=
2020=EB=85=84 4=EC=9B=94 28=EC=9D=BC (=ED=99=94) =EC=98=A4=EC=A0=84 1:12, M=
ichael Jones &lt;<a href=3D"mailto:mike@meshplusplus.com">mike@meshplusplus=
.com</a>&gt;=EB=8B=98=EC=9D=B4 =EC=9E=91=EC=84=B1:<br></div><blockquote cla=
ss=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid =
rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr"><br></=
div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On=
 Mon, Apr 27, 2020 at 7:42 AM Bj=C3=B8rn Mork &lt;<a href=3D"mailto:bjorn@m=
ork.no" target=3D"_blank">bjorn@mork.no</a>&gt; wrote:<br></div><blockquote=
 class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px so=
lid rgb(204,204,204);padding-left:1ex">Jeonghum Joh &lt;<a href=3D"mailto:o=
osaprogrammer@gmail.com" target=3D"_blank">oosaprogrammer@gmail.com</a>&gt;=
 writes:<br>
<br>
&gt; I am porting a 5G/LTE modem into OpenWRT.<br>
<br>
Follow the instructions for LTE modems.=C2=A0 A 5G modem is pretty much the=
<br>
same wrt drivers and basic management.=C2=A0 At least for Qualcomm based<br=
>
modems on a USB bus.=C2=A0 Have no experience with anything else.=C2=A0 The=
 Intel<br>
and Huawei modems are competely unknown to me, and most likely<br>
unsupported for the forseeable future.=C2=A0 And I&#39;m also blank on the =
magic<br>
of Qualcomms PCIe interface. Qualcomm did work on a driver, but it&#39;s<br=
>
been a long time since I saw any update on that.=C2=A0 I guess no one cares=
<br>
enough.=C2=A0 SuperSpeed USB is fine for most users for now.<br>
<br>
Anyway, several X55 based modems are already supported out of the box in<br=
>
OpenWrt master.=C2=A0 There is no need to reinvent the wheel if you are usi=
ng<br>
one of those.<br>
<br>
You may obviously decide to implement your own alternative solutions,<br>
like using some vendor software. But that will limit the user community<br>
severely. At least until the solution attracts more users.=C2=A0 And<br>
community support depends on users, which I believe is something you<br>
should consider since you have ended up in this forum.=C2=A0 You are unlike=
ly<br>
to find anyone here who have any experience with your particular vendor<br>
software version.<br>
<br>
Personally, I am happy to give advice about anything regardless of<br>
experience.=C2=A0 But the quality of that advice is probably a tiny bit<br>
better when it is based on something I&#39;ve tried myself.=C2=A0 Or maybe =
not?<br>
Is probably bad in any case.<br>
<br>
<br>
Bj=C3=B8rn<br><br></blockquote><div><br></div><div>@Jeonghum Joh</div><div>=
<br></div><div>If you decide to use the connection management software that=
 the vendor supplied, you&#39;ll want to integrate it into Netifd and Hotpl=
ug.d to ensure appropriate cross communication with things in the OpenWRT s=
ystem.</div><div><br></div><div>Please look at this file to see an example =
of how that is done:=C2=A0<a href=3D"https://github.com/openwrt/packages/bl=
ob/master/net/modemmanager/files/modemmanager.proto" target=3D"_blank">http=
s://github.com/openwrt/packages/blob/master/net/modemmanager/files/modemman=
ager.proto</a>=C2=A0There&#39;s a whole rabbit hole that you can follow on =
this topic to get every detail right, but it&#39;s probably sufficient for =
your purposes to get the high level details, and then let the OpenWRT stack=
 take care of the rest.</div></div></div>
</blockquote></div>

--00000000000093106305a450d121--


--===============7525147933580210187==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============7525147933580210187==--

