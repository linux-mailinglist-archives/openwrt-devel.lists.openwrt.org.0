Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 800F1B04E0
	for <lists+openwrt-devel@lfdr.de>; Wed, 11 Sep 2019 22:30:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=1FSCnCfZJm6/vMrUELeLPyjBZ83kaG3AUUzNkJGrMDQ=; b=U+4C2o8LV1fwTnblQCCFRfUjF
	W1+YDqJ90heDPJedHRXHqzIGO4MxhDFqHho6I+qJ7PDIb7qbSY4F7XC1P8A3IWH1uZ1tKJrYrK+9X
	J6zkwTdmbglNwh57SmSyptOhtlIegZN7e1wHxp47iIKHg9nEH/iWMI+SQd/JaCfQsXXix3ye2/VDZ
	QkmtdoUkQIa68ck8INBcQSnFNfN//6JijVZT+nfieVhAEdqpDBtpV3lhkNMmAfZ1n5mGYv1x8coQU
	5epMGzV2WuEpPe7XbhVwOR+T776EylfpFwusGUD3XQVO+dY4FYEa7OOWXbsrRawQUWS3cGdGYNaMf
	Fuhar4mjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i89G9-0008I6-GT; Wed, 11 Sep 2019 20:30:37 +0000
Received: from mail-wm1-x32a.google.com ([2a00:1450:4864:20::32a])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i89Fx-0008Hl-2f
 for openwrt-devel@lists.openwrt.org; Wed, 11 Sep 2019 20:30:26 +0000
Received: by mail-wm1-x32a.google.com with SMTP id g207so4975914wmg.5
 for <openwrt-devel@lists.openwrt.org>; Wed, 11 Sep 2019 13:30:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=CslPJhWgphBo0v3SIAyRs8KZJONvM2iD06X1Sj3Rejs=;
 b=mIzuq/wX2tFM6WGafbiWEI5PzngqJ7xoHD5sGZr3EWAhWGxSqyDDshn2eFkAoJqOi6
 1vnlkrI1Sy6+7lJMc6d3lAC/Gs2dmGdF58mTGbRNoOy7ClZCvu63AVs8RQ97hkUAtgHi
 pkon2XbXRZcsErKpaxGz/janmh6l7WKDz7ZdY36UwheY6t+mUzTQkFVZOWpKywIf44/K
 3mIS0QSQzjXOkdJSDKPUzXEAcTSSo/S22QZt5czOHvOY/+YEV/SmZX1i0dpUolRZ1Jh6
 rdXmX6ETsd81t7grL3rpkqTcawAFS/xEMjsRIkpsk0dxLD7nH/ZCLfEAt02OOfSmPW32
 yPnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=CslPJhWgphBo0v3SIAyRs8KZJONvM2iD06X1Sj3Rejs=;
 b=V941KYEfqJwrs2UzFTBjWGT03G9rMAvBH+10OqObSEVM2d7vZVa/Bnd8pbO8kfFePj
 D6+LUWCuvbe1xO0l4UZL8P7aAHE3oH/wpjh7eIfhenPgyaaj+U3Od7kDW3erCBiQ5NEm
 kYZ4b/7f+yjegeJB5hcRhNZTdAmxVckV1ARkaMcdXLKjDau2i7aV/iCW6vngbW2UHeGj
 pNsogzSTqvPan9EECe+IAEsvgPJW3DK1IPE7LA340CJ3nk+6heE9wQiViarRSuPWSYgY
 LdRSv5r/6EItis4nJVhx6NbBhUiKe1PgpCKHDttckDGEneC0ZrSIlB3LXrx1QC+yXWQD
 4UHQ==
X-Gm-Message-State: APjAAAUA2S7x/zQPxoWE/zPSVWoPSEEksnZySkQNoUxn0mhIh8GrYD+K
 98W1MxEw0uPn82mXgfHW823WzyJSuK1stMfGC8svhg==
X-Google-Smtp-Source: APXvYqz7RaVxuu8a7pOj56ayLkhqRN8oVTj0gy5JuNGyxWfAd0ZgcgmVvHCPpXIsysd3RNtE8hJPxGiO5fctG/hlAC8=
X-Received: by 2002:a05:600c:34d:: with SMTP id
 u13mr5261460wmd.97.1568233822512; 
 Wed, 11 Sep 2019 13:30:22 -0700 (PDT)
MIME-Version: 1.0
References: <f5bcb39a-bcc3-58c7-0b9a-622b0c386fff@candelatech.com>
In-Reply-To: <f5bcb39a-bcc3-58c7-0b9a-622b0c386fff@candelatech.com>
From: Carlito Nueno <carlitonueno@gmail.com>
Date: Wed, 11 Sep 2019 13:30:11 -0700
Message-ID: <CAEUausqebPVXzSgSBwgovzTBSWSO1dvF+G0LgqMOB8ry7hXGiA@mail.gmail.com>
To: Ben Greear <greearb@candelatech.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_133025_124037_15A09D92 
X-CRM114-Status: GOOD (  11.53  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:32a listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (carlitonueno[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] New ath10k-ct firmware available.
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
Content-Type: multipart/mixed; boundary="===============2743089325794970961=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============2743089325794970961==
Content-Type: multipart/alternative; boundary="000000000000ea6bbc05924ce37f"

--000000000000ea6bbc05924ce37f
Content-Type: text/plain; charset="UTF-8"

Hi Ben,

I was wondering if AP-VLAN is same as dynamic VLAN.
If so, will this feature work with ar71xx board - QCA9984

I can test it and let you know if I see any issues.

Thank you making ath10-ct!


On Mon, Sep 9, 2019 at 12:55 PM Ben Greear <greearb@candelatech.com> wrote:

> This enables a feature flag in the wave-2 firmware wmi-services indicating
> it can send
> software-encrypted raw frames.  This should in turn allow the AP-VLAN
> feature to work.
>
> For those that know how to use AP-VLANs, please try this wave-2 FW and the
> latest ath10k-ct
> driver(commit:  5e8cd86f90dac966d12df6ece84ac41458d0e95f) and let me know
> if it works as expected
> or not.
>
> 988x
> 5872fe046d90d844a6d3e232e47a6865bac551d7043b2874147c077e356b35d8
> firmware-2-ct-full-community-22.bin.lede.011
> 4568c3895a101ad28363491ea935f56a48bddea4c1be1889a6ba8d151902062a
> firmware-2-ct-full-htt-mgt-community-22.bin.lede.011
> /home/greearb/candela_html/downloads
> 9887
> 2c64ab22159d04cd345b8caffdd76ac95c0409729121a7a4095c5192f46013b2
> firmware-2-ct-full-community-22.bin.lede.011
> c806b8894faf3bbb11004f77196c6d711b9a6c187b1512d84e05fa98a5aba2ab
> firmware-2-ct-full-htt-mgt-community-22.bin.lede.011
> /home/greearb/candela_html/downloads
> 9980
> 4ed106dbe8431945afc6a995765f245f574713095b567df35f1397bba5f6fa2e
> firmware-5-ct-full-community-12.bin-lede.011
> 7434c84c501e00a24cbca338569ba150a9ec137ee2b9fa52d13484794300924c
> firmware-5-ct-full-htt-mgt-community-12.bin-lede.011
> /home/greearb/candela_html/downloads
> 9984
> 9af817e65dc9f195517f05ad25f0eca693632ea03b55739a2e0f0fc82e810405
> firmware-5-ct-full-community-12.bin-lede.011
> 11e116631555550185e712f70bd29ac41b495bf0ecbfc3334cada8a8c10a42f0
> firmware-5-ct-full-htt-mgt-community-12.bin-lede.011
> /home/greearb/candela_html/downloads
> 4019
> 21a6b5b69e3c1591cb9fe6077971ddadb003cac698f2962d4d8d73bc04038bbf
> firmware-5-ct-full-community-12.bin-lede.011
> 87111717ec5279125d397bea45386707684ee707a91f6c58298818fd02bf567f
> firmware-5-ct-full-htt-mgt-community-12.bin-lede.011
> /home/greearb/candela_html/downloads
> 9888
> 3c9f2e914d2a5eb3a413872239045dfcca105483ba83dd9b293e6b8855fda883
> firmware-5-ct-full-community-12.bin-lede.011
> dcb1bd826e5e1ef266fd7ee04410b44d4474d59f6eca0cc634e6432aaf326426
> firmware-5-ct-full-htt-mgt-community-12.bin-lede.011
> /home/greearb/candela_html/downloads
>
>
> Thanks,
> Ben
>
> --
> Ben Greear <greearb@candelatech.com>
> Candela Technologies Inc  http://www.candelatech.com
>
>
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel
>

--000000000000ea6bbc05924ce37f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Ben,</div><div><br></div><div>I was wondering if A=
P-VLAN is same as dynamic VLAN.</div><div>If so, will this feature work wit=
h ar71xx board - QCA9984</div><div><br></div><div>I can test it and let you=
 know if I see any issues.</div><div><br></div><div>Thank you making ath10-=
ct!<br></div><div><br></div></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Mon, Sep 9, 2019 at 12:55 PM Ben Greear &l=
t;<a href=3D"mailto:greearb@candelatech.com">greearb@candelatech.com</a>&gt=
; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px=
 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">This en=
ables a feature flag in the wave-2 firmware wmi-services indicating it can =
send<br>
software-encrypted raw frames.=C2=A0 This should in turn allow the AP-VLAN =
feature to work.<br>
<br>
For those that know how to use AP-VLANs, please try this wave-2 FW and the =
latest ath10k-ct<br>
driver(commit:=C2=A0 5e8cd86f90dac966d12df6ece84ac41458d0e95f) and let me k=
now if it works as expected<br>
or not.<br>
<br>
988x<br>
5872fe046d90d844a6d3e232e47a6865bac551d7043b2874147c077e356b35d8=C2=A0 firm=
ware-2-ct-full-community-22.bin.lede.011<br>
4568c3895a101ad28363491ea935f56a48bddea4c1be1889a6ba8d151902062a=C2=A0 firm=
ware-2-ct-full-htt-mgt-community-22.bin.lede.011<br>
/home/greearb/candela_html/downloads<br>
9887<br>
2c64ab22159d04cd345b8caffdd76ac95c0409729121a7a4095c5192f46013b2=C2=A0 firm=
ware-2-ct-full-community-22.bin.lede.011<br>
c806b8894faf3bbb11004f77196c6d711b9a6c187b1512d84e05fa98a5aba2ab=C2=A0 firm=
ware-2-ct-full-htt-mgt-community-22.bin.lede.011<br>
/home/greearb/candela_html/downloads<br>
9980<br>
4ed106dbe8431945afc6a995765f245f574713095b567df35f1397bba5f6fa2e=C2=A0 firm=
ware-5-ct-full-community-12.bin-lede.011<br>
7434c84c501e00a24cbca338569ba150a9ec137ee2b9fa52d13484794300924c=C2=A0 firm=
ware-5-ct-full-htt-mgt-community-12.bin-lede.011<br>
/home/greearb/candela_html/downloads<br>
9984<br>
9af817e65dc9f195517f05ad25f0eca693632ea03b55739a2e0f0fc82e810405=C2=A0 firm=
ware-5-ct-full-community-12.bin-lede.011<br>
11e116631555550185e712f70bd29ac41b495bf0ecbfc3334cada8a8c10a42f0=C2=A0 firm=
ware-5-ct-full-htt-mgt-community-12.bin-lede.011<br>
/home/greearb/candela_html/downloads<br>
4019<br>
21a6b5b69e3c1591cb9fe6077971ddadb003cac698f2962d4d8d73bc04038bbf=C2=A0 firm=
ware-5-ct-full-community-12.bin-lede.011<br>
87111717ec5279125d397bea45386707684ee707a91f6c58298818fd02bf567f=C2=A0 firm=
ware-5-ct-full-htt-mgt-community-12.bin-lede.011<br>
/home/greearb/candela_html/downloads<br>
9888<br>
3c9f2e914d2a5eb3a413872239045dfcca105483ba83dd9b293e6b8855fda883=C2=A0 firm=
ware-5-ct-full-community-12.bin-lede.011<br>
dcb1bd826e5e1ef266fd7ee04410b44d4474d59f6eca0cc634e6432aaf326426=C2=A0 firm=
ware-5-ct-full-htt-mgt-community-12.bin-lede.011<br>
/home/greearb/candela_html/downloads<br>
<br>
<br>
Thanks,<br>
Ben<br>
<br>
-- <br>
Ben Greear &lt;<a href=3D"mailto:greearb@candelatech.com" target=3D"_blank"=
>greearb@candelatech.com</a>&gt;<br>
Candela Technologies Inc=C2=A0 <a href=3D"http://www.candelatech.com" rel=
=3D"noreferrer" target=3D"_blank">http://www.candelatech.com</a><br>
<br>
<br>
_______________________________________________<br>
openwrt-devel mailing list<br>
<a href=3D"mailto:openwrt-devel@lists.openwrt.org" target=3D"_blank">openwr=
t-devel@lists.openwrt.org</a><br>
<a href=3D"https://lists.openwrt.org/mailman/listinfo/openwrt-devel" rel=3D=
"noreferrer" target=3D"_blank">https://lists.openwrt.org/mailman/listinfo/o=
penwrt-devel</a><br>
</blockquote></div>

--000000000000ea6bbc05924ce37f--


--===============2743089325794970961==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============2743089325794970961==--

