Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A90A5185D52
	for <lists+openwrt-devel@lfdr.de>; Sun, 15 Mar 2020 15:00:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:References:To:In-Reply-To:Date:Mime-Version:Message-Id:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=md7qHOaJP/ugTSBII8GL3tAljJeGZCXfozRiVLVBBOc=; b=SN+iE2pVYegnh1MHzXnPofFM/
	tIU2ovxiuCAcBbypLuX3qhXe3t3hz5eejDzL+DWNWL3bJfvRv+RqhLUmKMczlExXPj7QYAMo8E4vh
	JBhJoiKCHkZjZ+JqBSSsXEwUIIzXFejo8gosAs/gm2uj8D1+ytb2RtvZ/kjLJpP/exOW8ndUtKXsg
	4/NIbrJdK5H8g6lmjmcC3SyO9SFAd1AFTvTA/F0Y3zTW953A1Ti2iI7UEaPiP6TfsPc7XzEH43Gdx
	5seCKTGR01TyKP2cqp5ntcjdZBC/uVNgxht3zHm0k8hHWgj0LLbnyaUs5Da3lWUApE80AFgy5oNIG
	DAiqRnXug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDToi-0001bK-Kb; Sun, 15 Mar 2020 14:00:36 +0000
Received: from vps.slashdirt.org ([144.91.108.218])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDToc-0001ae-D5
 for openwrt-devel@lists.openwrt.org; Sun, 15 Mar 2020 14:00:32 +0000
Received: from chuck.tardis.lan (161-3-22-171.ftth.cust.kwaoo.net
 [171.22.3.161])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by vps.slashdirt.org (Postfix) with ESMTPSA id 6DE10600AA;
 Sun, 15 Mar 2020 15:00:25 +0100 (CET)
DKIM-Filter: OpenDKIM Filter v2.11.0 vps.slashdirt.org 6DE10600AA
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=slashdirt.org; s=mail;
 t=1584280826; bh=2hQAsYQ2Z2EKGNMJi41RqhHDvBC9u9EzH8P3/eSSbvA=;
 h=From:Subject:Date:In-Reply-To:Cc:To:References:From;
 b=Wvo/xcha5osr6AMDgzCl4Za56a6JZoMqctlA/k6r8JJf0l01bquWm+hWdKxnKX/3D
 cDXfePw7Y6F6GSJ79gF5wZDVYi/QaKr+onoj71KQSbxG6h0OrO+6M5vsonBVpuJhlV
 cOGxeijsMjKH2hwvziLUMa+ob6pTtkrJK/iUcHs0=
From: Thibaut <hacks@slashdirt.org>
Message-Id: <619B94DA-721A-4C55-9F1E-730AC8859918@slashdirt.org>
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.11\))
Date: Sun, 15 Mar 2020 15:00:24 +0100
In-Reply-To: <f968c665-b102-f51a-61ed-7c89e5ae861b@guifi.net>
To: "Roger Pueyo Centelles | Guifi.net" <roger.pueyo@guifi.net>
References: <20200314212303.29701-1-hacks@slashdirt.org>
 <20200315103451.34439-1-hacks@slashdirt.org>
 <005101d5fac2$06e7c670$14b75350$@adrianschmutzler.de>
 <AB7BAD62-99F2-4E02-8C70-BAA463D24D5A@slashdirt.org>
 <00e101d5fac8$99b84050$cd28c0f0$@adrianschmutzler.de>
 <C161EAD9-7C28-484D-A0B6-DA7A9366F514@slashdirt.org>
 <f968c665-b102-f51a-61ed-7c89e5ae861b@guifi.net>
X-Mailer: Apple Mail (2.3445.104.11)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200315_070030_774473_D06B584A 
X-CRM114-Status: GOOD (  13.79  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.4 NO_DNS_FOR_FROM        RBL: Envelope sender has no MX or A DNS records
 [listed in slashdirt.org.	IN	A]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] [PATCH v2] ar71xx: add support for RB SXTsq 2nD
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>,
 mail@adrianschmutzler.de
Content-Type: multipart/mixed; boundary="===============5098109621929031746=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org


--===============5098109621929031746==
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_790250C2-426F-4F2C-B335-028FA8774F6C"


--Apple-Mail=_790250C2-426F-4F2C-B335-028FA8774F6C
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

Hi,

> Le 15 mars 2020 =C3=A0 14:20, Roger Pueyo Centelles | Guifi.net =
<roger.pueyo@guifi.net> a =C3=A9crit :
>=20
> Hi,
>=20
>> I believe this is a waste of resources and a very suboptimal =
approach. I=E2=80=99m not sure I=E2=80=99m interested in spending time =
on this :P
> Probably it is. How would you approach it? Some devices that are the =
same hardware with just a different name are already supported like =
this: =
https://git.openwrt.org/?p=3Dopenwrt/openwrt.git;a=3Dcommit;h=3Dac36cca012=
dd1bbeea0fc4c2dc7a00941de34b52 =
<https://git.openwrt.org/?p=3Dopenwrt/openwrt.git;a=3Dcommit;h=3Dac36cca01=
2dd1bbeea0fc4c2dc7a00941de34b52>

Yes, except in this case the resulting image name isn=E2=80=99t changed =
and the difference in naming is very subtle. In the case I quote below, =
one device is called RB 911L, the other RB SXT 2nD r3. The average user =
is never going to know they=E2=80=99re one and the same :P

That=E2=80=99s why I=E2=80=99d prefer maintaining the one-image for all =
devices approach, which has benefits both for the openwrt infrastructure =
(it scales and consumes less ressources) and for the users (=C2=AB you =
have a mikrotik SPI NOR device? You can=E2=80=99t get it wrong, the =
image works on all of those we support =C2=BB).

Considering routerboot=E2=80=99s lack of support for DTS, I suspect the =
only way to tackle this is via an intermediary loader, unless there is a =
specific mechanism in the kernel we could use (I=E2=80=99m not aware of =
any, but I know very little about the implementation details of DTS).

>> Some devices share the exact same hardware and differ only in =
(marketing) name, as evidenced by:
>> =
https://git.openwrt.org/?p=3Dopenwrt/openwrt.git;a=3Dcommitdiff;h=3D5ac974=
f2145c770431a6eb7e006dd086b70224b1 =
<https://git.openwrt.org/?p=3Dopenwrt/openwrt.git;a=3Dcommitdiff;h=3D5ac97=
4f2145c770431a6eb7e006dd086b70224b1>
>>=20
>> (this device uses the 911L platform)
>>=20
>>> Just have a look at how the few ath79 devices are implemented, but =
note that they will be moved to a mikrotik subtarget soon as indicated =
by Roger already.
>>=20
>> I=E2=80=99ve offered in this thread a couple patches to align the =
ath79 implementation on the existing ramips one wrt mtd partitioning and =
naming.
> To me they're OK, I have no preference for having the partitions =
nested or not. What are the benefits and drawbacks?
>=20
>=20
As was once discussed and eventually accepted (when renaming RBMxxG =
partitions), this is in line with the canonical way to define partitions =
in DTS, as documented in =
Documentation/devicetree/bindings/mtd/partition.txt

This method is apparently used in all bcm targets, including ath79, ipq =
and lantiq. The aforementioned documentation says:

	For backwards compatibility partitions as direct subnodes of the =
flash device are
	supported. This use is discouraged.


Cheers,
Thibaut=

--Apple-Mail=_790250C2-426F-4F2C-B335-028FA8774F6C
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html; =
charset=3Dutf-8"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; line-break: after-white-space;" =
class=3D"">Hi,<br class=3D""><div><br class=3D""><blockquote type=3D"cite"=
 class=3D""><div class=3D"">Le 15 mars 2020 =C3=A0 14:20, Roger Pueyo =
Centelles | <a href=3D"http://Guifi.net" class=3D"">Guifi.net</a> &lt;<a =
href=3D"mailto:roger.pueyo@guifi.net" =
class=3D"">roger.pueyo@guifi.net</a>&gt; a =C3=A9crit :</div><br =
class=3D"Apple-interchange-newline"><div class=3D"">
 =20
    <meta http-equiv=3D"Content-Type" content=3D"text/html; =
charset=3DUTF-8" class=3D"">
 =20
  <div class=3D""><p class=3D"">Hi,</p>
    <blockquote type=3D"cite" =
cite=3D"mid:C161EAD9-7C28-484D-A0B6-DA7A9366F514@slashdirt.org" =
class=3D"">
      <div class=3D"">I believe this is a waste of resources and a very =
suboptimal
        approach. I=E2=80=99m not sure I=E2=80=99m interested in =
spending time on this
        :P</div>
    </blockquote>
    Probably it is. How would you approach it? Some devices that are the
    same hardware with just a different name are already supported like
    this:
<a =
href=3D"https://git.openwrt.org/?p=3Dopenwrt/openwrt.git;a=3Dcommit;h=3Dac=
36cca012dd1bbeea0fc4c2dc7a00941de34b52" =
class=3D"">https://git.openwrt.org/?p=3Dopenwrt/openwrt.git;a=3Dcommit;h=3D=
ac36cca012dd1bbeea0fc4c2dc7a00941de34b52</a><br =
class=3D""></div></div></blockquote><div><br class=3D""></div>Yes, =
except in this case the resulting image name isn=E2=80=99t changed and =
the difference in naming is very subtle. In the case I quote below, one =
device is called RB 911L, the other&nbsp;RB SXT 2nD r3. The average user =
is never going to know they=E2=80=99re one and the same :P</div><div><br =
class=3D""></div><div>That=E2=80=99s why I=E2=80=99d prefer maintaining =
the one-image for all devices approach, which has benefits both for the =
openwrt infrastructure (it scales and consumes less ressources) and for =
the users (=C2=AB&nbsp;you have a mikrotik SPI NOR device? You can=E2=80=99=
t get it wrong, the image works on all of those we support =
=C2=BB).</div><div><br class=3D""></div><div>Considering routerboot=E2=80=99=
s lack of support for DTS, I suspect the only way to tackle this is via =
an intermediary loader, unless there is a specific mechanism in the =
kernel we could use (I=E2=80=99m not aware of any, but I know very =
little about the implementation details of DTS).</div><div><br =
class=3D""></div><div><blockquote type=3D"cite" class=3D""><div =
class=3D""><div class=3D"">
    <blockquote type=3D"cite" =
cite=3D"mid:C161EAD9-7C28-484D-A0B6-DA7A9366F514@slashdirt.org" =
class=3D"">
     =20
      <div class=3D"">Some devices share the exact same hardware and =
differ only in
        (marketing) name, as evidenced by:</div>
      <div class=3D""><a =
href=3D"https://git.openwrt.org/?p=3Dopenwrt/openwrt.git;a=3Dcommitdiff;h=3D=
5ac974f2145c770431a6eb7e006dd086b70224b1" class=3D"" =
moz-do-not-send=3D"true">https://git.openwrt.org/?p=3Dopenwrt/openwrt.git;=
a=3Dcommitdiff;h=3D5ac974f2145c770431a6eb7e006dd086b70224b1</a></div>
      <div class=3D""><br class=3D"">
      </div>
      <div class=3D"">(this device uses the 911L platform)</div>
      <div class=3D""><br class=3D"">
      </div>
      <div class=3D"">
        <blockquote type=3D"cite" class=3D"">
          <div class=3D"">
            <div class=3D"">Just have a look at how the few ath79 =
devices
              are implemented, but note that they will be moved to a
              mikrotik subtarget soon as indicated by Roger already.<br =
class=3D"">
            </div>
          </div>
        </blockquote>
      </div>
      <br class=3D"">
      <div class=3D"">I=E2=80=99ve offered in this thread a couple =
patches to
        align the ath79 implementation on the existing ramips one wrt
        mtd partitioning and naming.</div>
    </blockquote><p class=3D"">To me they're OK, I have no preference =
for having the partitions
      nested or not. What are the benefits and drawbacks?</p><div =
class=3D""><br class=3D""></div></div></div></blockquote>As was once =
discussed and eventually accepted (when renaming RBMxxG partitions), =
this is in line with the canonical way to define partitions in DTS, as =
documented in =
Documentation/devicetree/bindings/mtd/partition.txt</div><div><br =
class=3D""><div class=3D"">This method is apparently used in all bcm =
targets, including ath79, ipq and lantiq. The aforementioned =
documentation says:</div><div class=3D""><br class=3D""></div><div =
class=3D""><span class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span>For backwards compatibility partitions as direct subnodes of the =
flash device are</div><div class=3D""><span class=3D"Apple-tab-span" =
style=3D"white-space:pre">	</span>supported. This use is =
discouraged.</div><br class=3D"Apple-interchange-newline"><br =
class=3D""></div><div>Cheers,</div><div>Thibaut</div></body></html>=

--Apple-Mail=_790250C2-426F-4F2C-B335-028FA8774F6C--


--===============5098109621929031746==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============5098109621929031746==--

