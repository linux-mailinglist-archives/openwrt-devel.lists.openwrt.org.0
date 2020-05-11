Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C4F81CD475
	for <lists+openwrt-devel@lfdr.de>; Mon, 11 May 2020 11:06:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=0M6DxONZQvv0vpbCpLqh+vBtx5zwikesJ0jBwIEjvvQ=; b=h5HmyWXa8sCWzxO0x4dVIcJSs
	yIpbj5C3Bb8SzlmsWnK1AVA/4UyWs66ZbzWQPctR5apsduSkgBpUCnmysnTY9MFwLz0p0hPhrJROd
	wc+O1KvOGLwcLkowCDlItbdKjICK/FErMoFABBdMUw5LxD2z8AGDySgbdsdrToDTgYQhURrTos4L2
	K5fE3o+gW2V1K2jj0b/FguLTfh+wvhG41e4sCwkXlHlqOUyhQu1zZInJz+8BcOV2wUgqAAbyBMkAD
	YSCBydqlv2l+XFP5Ls9szAshVh9Cs2t4uqGhAWtlTqkUogfQEshCW2o9xtYJjSSYvoNw9WSeS4e4K
	0sGVq8z4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jY4O0-0000p4-Or; Mon, 11 May 2020 09:06:08 +0000
Received: from mail-ed1-x52e.google.com ([2a00:1450:4864:20::52e])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jY4Nn-0000mu-Lq
 for openwrt-devel@lists.openwrt.org; Mon, 11 May 2020 09:05:57 +0000
Received: by mail-ed1-x52e.google.com with SMTP id bs4so1000046edb.6
 for <openwrt-devel@lists.openwrt.org>; Mon, 11 May 2020 02:05:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=M3sQmc9PRn1DyOJt/S+gtyg0IwWKvcD4J3dRS+wIVoc=;
 b=ukdGYmkKij2Gqx58Em3erfNPmtS+Du+MKkpne5eL0hxYdQLS6NZR9vz3gkRIhJ1jYP
 Ei/F1c7J4Vgtv/LfgeCW/IsQOdMdQl/bqid6hmag9cATNUsBYO6I6MtFTxD9Digjt5Y5
 d0kJWCZMN4D4WeDe+e47WmdOpB97yTE8clrsgpVnWvJXE2VRZ66IWFiuOy/Kz/b8xlvN
 R/cKwQuPdtnxW5om3yaRVfIInTGiknSC3X1nMhQfAPUthe5s40WuhRV2rCHlzW9E4gNl
 BKAkKTCRjY9rq7ree5Lhl3xZOmV0NzTKLw4RHiqFU56UX5Wtw/SRIDXxuha1bjslfYUq
 7Whg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=M3sQmc9PRn1DyOJt/S+gtyg0IwWKvcD4J3dRS+wIVoc=;
 b=puThj5o8qfY51b9YZhXzAHZRhhM1JPAHlpL+Gn/7E4DLHp5Uq5w9yqVX6ENrnrVEWx
 0YFJemp0Ks2/FpBTXD6q+Nwlz5on4bYuAlWu0zvgWSJln33hWh/X3ZM/lLYH6WvqShkA
 Je/R1MXMcu1dAW/JyRlSOO1oDsmwzF0LVEHUack79uxJK+ActGSQj6E2BzLdGRbHaS2n
 7vbrbhO0VvVGjXd9tzwpO19p/BCm3O3o7ez/TkSx/l3msw1YWHRgCrgf4Z8d95eoUwcY
 mZZfCDktce4IIjvx3XCHrYNruELro+WkQw+h62mcg8MLgrJhGLqL3Ud/JEf0JGXb+c+y
 hOZw==
X-Gm-Message-State: AGi0PuYj1P5ywgKngGjLGdeOs3bw5WYdYQAQay45hC2zKiSAehBAgRUi
 VSxD/Z+ASENhhXE0oa9br+UZEUv0qB6Ye5d5uNU=
X-Google-Smtp-Source: APiQypLa1F+2icZjM7aoFV9NvAqxKaGpzeekExvIcRc0FzuNXsCWJRQHcCwtYQdrBiPRFWLQaA6qFr4iAwiE/VjSeFQ=
X-Received: by 2002:a50:8dc2:: with SMTP id s2mr13013344edh.318.1589187953924; 
 Mon, 11 May 2020 02:05:53 -0700 (PDT)
MIME-Version: 1.0
References: <CALYKT1hk3-kyD5xifS1QGYE5dy5rR9Jn0HjojxCbe5yDcjAxkw@mail.gmail.com>
 <CAJQUmm6yC5n32pw1PfVX_xJmzSgy0svZQZQRrA0Uyf2GSj6nNA@mail.gmail.com>
 <87mu6ur24u.fsf@miraculix.mork.no>
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
In-Reply-To: <CAAP7ucKeVq3N0RJhez45o7g0jkRenPvDUVazRy2CCm3cK64xQg@mail.gmail.com>
From: Jeonghum Joh <oosaprogrammer@gmail.com>
Date: Mon, 11 May 2020 18:05:42 +0900
Message-ID: <CALYKT1gNQncwkrLR_Teb1Ak2fYzohd5E0Do79kR+aWA2eVxxkQ@mail.gmail.com>
To: Aleksander Morgado <aleksander@aleksander.es>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_020555_749649_B98B919A 
X-CRM114-Status: GOOD (  10.29  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:52e listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [oosaprogrammer[at]gmail.com]
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [ModemManager] How can I make ModemManager work
 right?
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
 =?UTF-8?Q?Bj=C3=B8rn_Mork?= <bjorn@mork.no>
Content-Type: multipart/mixed; boundary="===============7413231765252049279=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============7413231765252049279==
Content-Type: multipart/alternative; boundary="000000000000799f3c05a55ba702"

--000000000000799f3c05a55ba702
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello Alexander,

I didn't attach antenna. With antenna, I received improved print I think:

root@LEDE:~# mmcli -L
    /org/freedesktop/ModemManager1/Modem/0 [Quectel] EC25
root@LEDE:~# mmcli -m 0
  --------------------------------
  General  |            dbus path: /org/freedesktop/ModemManager1/Modem/0
           |            device id: 97ffc2eeb6d3ad975d9089850aa3b9b494529919
  --------------------------------
  Hardware |         manufacturer: Quectel
           |                model: EC25
           |    firmware revision: EC25EFAR04A02M4G_SKT
           |            supported: gsm-umts, lte
           |              current: gsm-umts, lte
           |         equipment id: 356673040475612
  --------------------------------
  System   |               device:
/sys/devices/platform/1a0c0000.usb/usb1/1-2
           |              drivers: option
           |               plugin: Quectel
           |         primary port: ttyUSB2
           |                ports: ttyUSB0 (qcdm), ttyUSB2 (at), ttyUSB3
(at)
  --------------------------------
  Numbers  |                  own: 01224316205
  --------------------------------
  Status   |       unlock retries: sim-pin (3), sim-pin2 (3), sim-puk (10),
sim-puk2 (10)
           |                state: connected        <<<<<<<<<<<<<<<<<<
           |          power state: on
           |          access tech: lte
           |       signal quality: 80% (recent)
  --------------------------------
  Modes    |            supported: allowed: 2g, 3g, 4g; preferred: none
           |              current: allowed: 2g, 3g, 4g; preferred: none
  --------------------------------
  IP       |            supported: ipv4, ipv6, ipv4v6
  --------------------------------
  3GPP     |                 imei: 356673040475612
           |          operator id: 45005
           |        operator name: SKTelecom         <<<<<<<<<<<<<<<<<<
           |         registration: home         <<<<<<<<<<<<<<<<<<
  --------------------------------
  3GPP EPS | ue mode of operation: csps-1
  --------------------------------
  SIM      |            dbus path: /org/freedesktop/ModemManager1/SIM/0
  --------------------------------
  Bearer   |            dbus path: /org/freedesktop/ModemManager1/Bearer/0
root@LEDE:~# mmcli -b 0
  --------------------------------
  General            |  dbus path: /org/freedesktop/ModemManager1/Bearer/0
                     |       type: default
  --------------------------------
  Status             |  connected: yes
                     |  suspended: no
                     |  interface: ttyUSB2
                     | ip timeout: 20
  --------------------------------
  Properties         |        apn: lte-internet.sktelecom.com
                     |    roaming: allowed         <<<<<<<<<<<<<<<<<<
  --------------------------------
  IPv4 configuration |     method: ppp         <<<<<<<<<<<<<<<<<<
<<<<<<<<<<<<<<<<<<
                     |     prefix: 0
  --------------------------------
  Statistics         |   duration: 60
root@LEDE:~# mmcli -m 0 --list-bearers
error: no actions specified



But IPv4 configuration method is ppp.
I think this is what you said that the connection is ppp not QMI.
Then How is this supposed to be in correct and righteous setting? Should
this be QMI or something like that?

Thank you very much.
Jeonghum



2020=EB=85=84 5=EC=9B=94 11=EC=9D=BC (=EC=9B=94) =EC=98=A4=ED=9B=84 4:36, A=
leksander Morgado <aleksander@aleksander.es>=EB=8B=98=EC=9D=B4
=EC=9E=91=EC=84=B1:

> Hey!
>
> >
> > I found one :
> > https://github.com/lkundrak/openwrt-network-manager
> >
> > I wonder if this is righty and worthy to try.
> > I am now trying porting it anyway.
> >
>
> I would first write to lkundrak (who is one of the NetworkManager
> maintainers) to ask whether this port is usable or not.
>
> --
> Aleksander
> https://aleksander.es
>

--000000000000799f3c05a55ba702
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello Alexander,<div><br></div><div>I didn&#39;t attach an=
tenna. With antenna, I received improved print I think:</div><div><br></div=
><div>root@LEDE:~# mmcli -L<br>=C2=A0 =C2=A0 /org/freedesktop/ModemManager1=
/Modem/0 [Quectel] EC25<br>root@LEDE:~# mmcli -m 0<br>=C2=A0 --------------=
------------------<br>=C2=A0 General =C2=A0| =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0dbus path: /org/freedesktop/ModemManager1/Modem/0<br>=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0| =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0device id: 97ffc2eeb6d3ad975d9089850aa3b9b494529919<br>=C2=A0 ----------=
----------------------<br>=C2=A0 Hardware | =C2=A0 =C2=A0 =C2=A0 =C2=A0 man=
ufacturer: Quectel<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0| =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0model: EC25<br>=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0| =C2=A0 =C2=A0firmware revision: EC25EFAR04A02M=
4G_SKT<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0| =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0supported: gsm-umts, lte<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0| =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0current: gs=
m-umts, lte<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0| =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 equipment id: 356673040475612<br>=C2=A0 ------------------------=
--------<br>=C2=A0 System =C2=A0 | =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 device: /sys/devices/platform/1a0c0000.usb/usb1/1-2<br>=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0| =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0drivers: option<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0| =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 plugin: Quectel<br>=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0| =C2=A0 =C2=A0 =C2=A0 =C2=A0 primary port: =
ttyUSB2<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0| =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ports: ttyUSB0 (qcdm), ttyUSB2 (at), ttyU=
SB3 (at)<br>=C2=A0 --------------------------------<br>=C2=A0 Numbers =C2=
=A0| =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0own: 012=
24316205<br>=C2=A0 --------------------------------<br>=C2=A0 Status =C2=A0=
 | =C2=A0 =C2=A0 =C2=A0 unlock retries: sim-pin (3), sim-pin2 (3), sim-puk =
(10), sim-puk2 (10)<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0| =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0state: connected=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 &lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&=
lt;&lt;&lt;&lt;<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0| =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0power state: on<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0| =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0access tech: lte<br>=C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0| =C2=A0 =C2=A0 =C2=A0 signal quality: 80% (rec=
ent)<br>=C2=A0 --------------------------------<br>=C2=A0 Modes =C2=A0 =C2=
=A0| =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0supported: allowed: 2g, 3g, 4=
g; preferred: none<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0| =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0current: allowed: 2g, 3g, 4g; preferr=
ed: none<br>=C2=A0 --------------------------------<br>=C2=A0 IP =C2=A0 =C2=
=A0 =C2=A0 | =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0supported: ipv4, ipv6=
, ipv4v6<br>=C2=A0 --------------------------------<br></div><div>=C2=A0 3G=
PP =C2=A0 =C2=A0 | =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
imei: 356673040475612<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0| =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0operator id: 45005<br>=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0| =C2=A0 =C2=A0 =C2=A0 =C2=A0operator name: SKTelecom

=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt=
;&lt;&lt;&lt;&lt;&lt;&lt;

<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0| =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
registration: home

=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt=
;&lt;&lt;&lt;&lt;&lt;&lt;

<br>=C2=A0 --------------------------------<br>=C2=A0 3GPP EPS | ue mode of=
 operation: csps-1<br>=C2=A0 --------------------------------<br>=C2=A0 SIM=
 =C2=A0 =C2=A0 =C2=A0| =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0dbus path: =
/org/freedesktop/ModemManager1/SIM/0<br>=C2=A0 ----------------------------=
----<br>=C2=A0 Bearer =C2=A0 | =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0dbu=
s path: /org/freedesktop/ModemManager1/Bearer/0<br>root@LEDE:~# mmcli -b 0<=
br>=C2=A0 --------------------------------<br>=C2=A0 General =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0| =C2=A0dbus path: /org/freedesktop/ModemManager=
1/Bearer/0<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0| =C2=A0 =C2=A0 =C2=A0 type: default<br>=C2=A0 -----------=
---------------------<br>=C2=A0 Status =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 | =C2=A0connected: yes<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0| =C2=A0suspended: no<br>=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0| =C2=A0inter=
face: ttyUSB2<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0| ip timeout: 20<br>=C2=A0 ----------------------------=
----<br>=C2=A0 Properties =C2=A0 =C2=A0 =C2=A0 =C2=A0 | =C2=A0 =C2=A0 =C2=
=A0 =C2=A0apn: <a href=3D"http://lte-internet.sktelecom.com">lte-internet.s=
ktelecom.com</a><br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0| =C2=A0 =C2=A0roaming: allowed

=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt=
;&lt;&lt;&lt;&lt;&lt;&lt;

<br>=C2=A0 --------------------------------<br>=C2=A0 IPv4 configuration | =
=C2=A0 =C2=A0 method: ppp

=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt=
;&lt;&lt;&lt;&lt;&lt;&lt;


=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt=
;&lt;&lt;&lt;&lt;&lt;&lt;


<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0| =C2=A0 =C2=A0 prefix: 0<br>=C2=A0 --------------------------------<=
br>=C2=A0 Statistics =C2=A0 =C2=A0 =C2=A0 =C2=A0 | =C2=A0 duration: 60<br>r=
oot@LEDE:~# mmcli -m 0 --list-bearers<br>error: no actions specified<br></d=
iv><div><br></div><div><br></div><div><br></div><div>But IPv4 configuration=
 method is ppp.</div><div>I think this is what you said that the connection=
 is ppp not QMI.</div><div>Then How is this supposed to be in correct and r=
ighteous setting? Should this be QMI or something like that?</div><div><br>=
</div><div>Thank you very much.</div><div>Jeonghum</div><div><br></div><div=
><br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"g=
mail_attr">2020=EB=85=84 5=EC=9B=94 11=EC=9D=BC (=EC=9B=94) =EC=98=A4=ED=9B=
=84 4:36, Aleksander Morgado &lt;<a href=3D"mailto:aleksander@aleksander.es=
">aleksander@aleksander.es</a>&gt;=EB=8B=98=EC=9D=B4 =EC=9E=91=EC=84=B1:<br=
></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;=
border-left:1px solid rgb(204,204,204);padding-left:1ex">Hey!<br>
<br>
&gt;<br>
&gt; I found one :<br>
&gt; <a href=3D"https://github.com/lkundrak/openwrt-network-manager" rel=3D=
"noreferrer" target=3D"_blank">https://github.com/lkundrak/openwrt-network-=
manager</a><br>
&gt;<br>
&gt; I wonder if this is righty and worthy to try.<br>
&gt; I am now trying porting it anyway.<br>
&gt;<br>
<br>
I would first write to lkundrak (who is one of the NetworkManager<br>
maintainers) to ask whether this port is usable or not.<br>
<br>
-- <br>
Aleksander<br>
<a href=3D"https://aleksander.es" rel=3D"noreferrer" target=3D"_blank">http=
s://aleksander.es</a><br>
</blockquote></div>

--000000000000799f3c05a55ba702--


--===============7413231765252049279==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============7413231765252049279==--

