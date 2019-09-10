Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 97478AEE69
	for <lists+openwrt-devel@lfdr.de>; Tue, 10 Sep 2019 17:20:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:MIME-Version:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=CIp9mXFASNJ+N3aJu6SzsZI9BQQihHNhfM0aFABn3Tw=; b=ioy
	QIDHyZ/VxXZfc8fraEhtLMD3iXki7ihYCiV6OS6F4HLKqqaD7VT7iZSpx38X6tDDG18TVdd4qmW+z
	oVOhTwUivHoeCIiVFILyeXo+BENwnui4cOvh7Xhkhr5psdOxZQI5ALcHlEuWEzkIPu37Y0zfwG6sa
	ZmcVJyEKdXu4VQLM0rX+JEoq4LOlqME/8N/icps+g2rgz9W/IcfTfSdINusKG+JuD6NDXQb3w2ZeD
	MG5M3EyNRgzKnMObfBu0L8TGw2EHid86GijH37uufWAioyNyYWlFHsfrZqVA1/TBdN4tqlhjzqZNp
	wSLrekXF8zFWGZwVKgXvnDJRxTXQeyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7hwS-0003ol-NV; Tue, 10 Sep 2019 15:20:28 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7hwJ-0003oP-R2
 for openwrt-devel@lists.openwrt.org; Tue, 10 Sep 2019 15:20:22 +0000
Received: by mail-lf1-x141.google.com with SMTP id d10so13798008lfi.0
 for <openwrt-devel@lists.openwrt.org>; Tue, 10 Sep 2019 08:20:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=samknows-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:from:date:message-id:subject:to;
 bh=zX1W54o9o/a3VEtWn8rhabNm9/BmeSvat5YbAuxpWXY=;
 b=dsSHriDf2SBhdPdpGTY3Nn/mvKRqxZD7bTIfZl3VfOA/QiCPxTgm2bvqYA+5nsCn4z
 28aR1O0fTWxdtcGAmIHMYkYwtyAswbmpQHYVP8Iwt6nGodHa3/LjpwUK8G58od5KHI20
 XJ63v1OeveTnJLYkKDiS6hCAI01SwdKZ9SAxi3O51iVfnkwKiyVbdhFDyBw70B3djs3E
 dJw21sOgjwO4nHusCkbMxs52PdRo6KvO/Ft+2ImEArjeb0ZhKeufZZzQYiqkNipEbOOz
 DcDjpqVclaXBmFy9IF4tamyVKmHJHk93hACUZDlggcMI/jvQoPQUBntHInCQGlQGfSxH
 xGvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=zX1W54o9o/a3VEtWn8rhabNm9/BmeSvat5YbAuxpWXY=;
 b=ar5J+ySWLuST3l5mybru64C6u9MuBbqMUCb3L0Ijj+Jlga6lzskd9Lw5Z93KY3lAZJ
 GL9ZlCQU+b9IcJliV/jSiRy12wv7isIor7zqkcj9j1txAyg7G+RyNjjKKiaYX4q6SQsy
 7REbAsAv9CN+47fzS0H7yWHX0pdNKdYvzyMLtGVeIQO65ofzuLwyV2Jyxxnc0/Depl9M
 WHJT7svXYhhy/Xz7Pq/zWeOYvrn5Twq9+UVjd7W1ICWOvRSHAoSpYgkAJnKlJd5bqgig
 yRdMf7Dwss/eFywz6gKvrkwQXsgCcZfqGFh12aEmwKl6XYJlbthukaIxEdxvDwFf2sZw
 +24Q==
X-Gm-Message-State: APjAAAUD2tuk6tFljKfsRyr+FzMAvoOzjM0sTizwmKXsi+uvudIhevGy
 XEl4Pmb2hLDAE6hkGM8cWvslqaUcOdQ9hotgfg/cOFfCAfA=
X-Google-Smtp-Source: APXvYqygdRw6CoGExdVXGja2eI2KaWLato7aaI7tOvvgendFsNnYAuNHgsTWY566qFHTxGTZ0xW5Q++bZux1xbK3Ud4=
X-Received: by 2002:ac2:4359:: with SMTP id o25mr20876394lfl.147.1568128817164; 
 Tue, 10 Sep 2019 08:20:17 -0700 (PDT)
MIME-Version: 1.0
From: Salvatore Mesoraca <salvatore@samknows.com>
Date: Tue, 10 Sep 2019 16:20:06 +0100
Message-ID: <CA+OT2oE7MRfmzKjeyc=rFhWL-9ui-U+ttY+67j8sX2GPFmoibQ@mail.gmail.com>
To: openwrt-devel@lists.openwrt.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190910_082019_941574_93924CBB 
X-CRM114-Status: UNSURE (   9.57  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] nftables: named counters broken on 18.06.4
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
Content-Type: multipart/mixed; boundary="===============2606578367329339408=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============2606578367329339408==
Content-Type: multipart/alternative; boundary="0000000000001c061305923471cf"

--0000000000001c061305923471cf
Content-Type: text/plain; charset="UTF-8"

Hi,

I'm experiencing a problem with nftables' named counters with OpenWrt
18.06.4 on a NetGear R7800.
This is an example of what I get:

# uname -a
Linux OpenWrt 4.14.131 #0 SMP Thu Jun 27 12:18:52 2019 armv7l GNU/Linux
# nft flush ruleset
# nft add table inet filter
# nft add counter inet filter mycounter
# nft add chain inet filter output { type filter hook output priority 0 \; }
# nft add rule inet filter output counter name mycounter
Error: Could not process rule: No such file or directory
add rule inet filter output counter name mycounter
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
# nft list ruleset
table inet filter {
        counter mycounter {
                packets 0 bytes 0
        }

        chain output {
                type filter hook output priority 0; policy accept;
        }
}

Running the failing command using strace I can tell that the ENOENT error
is received from the kernel via Netlink.
It's similar to what I get if I try to reference a non-existent counter,
but "mycounter" exists.
If I remove "name mycounter" from the command line, it works. Of course it
creates an anonymous counter.
The message sent via Netlink looks correct, so I think that the problem
resides in kernel.


On a PC with 4.15 the same command sequence works flawlessly:

# nft flush ruleset
# nft add table inet filter
# nft add counter inet filter mycounter
# nft add chain inet filter output { type filter hook output priority 0 \; }
# nft add rule inet filter output counter name mycounter
# nft list ruleset
table inet filter {
        counter mycounter {
                packets 0 bytes 0
        }

        chain output {
                type filter hook output priority 0; policy accept;
                counter name "mycounter"
        }
}

Any ideas?

Thank you,

Salvatore

--0000000000001c061305923471cf
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<br><br>I&#39;m experiencing a problem with nftables&#3=
9; named counters with OpenWrt 18.06.4 on a NetGear R7800.<br>This is an ex=
ample of what I get:<br><br># uname -a<br>Linux OpenWrt 4.14.131 #0 SMP Thu=
 Jun 27 12:18:52 2019 armv7l GNU/Linux<br># nft flush ruleset<br># nft add =
table inet filter<br># nft add counter inet filter mycounter<br># nft add c=
hain inet filter output { type filter hook output priority 0 \; }<br># nft =
add rule inet filter output counter name mycounter<br>Error: Could not proc=
ess rule: No such file or directory<br>add rule inet filter output counter =
name mycounter<br>^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^<br># =
nft list ruleset<br>table inet filter {<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 coun=
ter mycounter {<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
packets 0 bytes 0<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br><br>=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 chain output {<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 type filter hook output priority 0; policy accept;<br>=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 }<br>}<br><br>Running the failing command using strace I =
can tell that the ENOENT error is received from the kernel via Netlink.<br>=
It&#39;s similar to what I get if I try to reference a non-existent counter=
, but &quot;mycounter&quot; exists.<br>If I remove &quot;name mycounter&quo=
t; from the command line, it works. Of course it creates an anonymous count=
er.<br>The message sent via Netlink looks correct, so I think that the prob=
lem resides in kernel.<br><br><br>On a PC with 4.15 the same command sequen=
ce works flawlessly:<br><br># nft flush ruleset<br># nft add table inet fil=
ter<br># nft add counter inet filter mycounter<br># nft add chain inet filt=
er output { type filter hook output priority 0 \; }<br># nft add rule inet =
filter output counter name mycounter<br># nft list ruleset<br>table inet fi=
lter {<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 counter mycounter {<br>=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 packets 0 bytes 0<br>=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 }<br><br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 chain output {<br>=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 type filter hook ou=
tput priority 0; policy accept;<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 counter name &quot;mycounter&quot;<br>=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 }<br><div>}</div><div><br></div><div>Any ideas?</div><div><br></=
div><div>Thank you,</div><div><br></div><div>Salvatore<br></div></div>

--0000000000001c061305923471cf--


--===============2606578367329339408==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============2606578367329339408==--

