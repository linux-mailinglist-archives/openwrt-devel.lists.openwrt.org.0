Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC25219B99C
	for <lists+openwrt-devel@lfdr.de>; Thu,  2 Apr 2020 02:50:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Oz8paxGoScBkS6MSn4DSrXWG4BykWtfkigtP8YBrMG4=; b=mBiY//2NM8Hs+s
	r52lVfjbGV/kN3SwE+7qVr7OJa+V2PbR6H1pv4GvTrZIQuCb3UMZnTAMoNi3cr5AVP7CGQavk7vmA
	F7GjU7c3Ugi7MpbX3DpwqXpkTLIm2emoD2yO8fJ8H8sWUu4pXJCXgJ5i/fHvEQgqKDHTp20cBUjKr
	66HRRynK8YuI5RioQaW+PZjw2g9JHxDwO9Em/Bnjq86PSPAfdpTYLV7jAcDLRYwTHnTlsDHSR+XF2
	p42bJ7BHBMOEL0gzGEg1PHebT3yP+VxV3raqi3A726T5LlxxGcc5aMh141U3v3yhpO5zLvFL7qvso
	NYsLIvopjUwYIbEODaBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJo3M-0003qf-DT; Thu, 02 Apr 2020 00:49:52 +0000
Received: from mout.gmx.net ([212.227.17.22])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJo3E-0003q9-S1
 for openwrt-devel@lists.openwrt.org; Thu, 02 Apr 2020 00:49:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1585788580;
 bh=xz57LkMH3QRD2zWu2P3ylBZSlcwRCZIiLZMGPLRh6qU=;
 h=X-UI-Sender-Class:Date:From:To:Cc:Subject:In-Reply-To:References;
 b=d0csK/1CPTO4TgDQND6jEkMiFHFNRaTmNFp/uX950wGDHIFxxs+Hmy9odrMkdqDuq
 IPjqh0jWmyCBybE+McWOA8QKCeOZd6G3VQrPVRfUCaLkcIMYL31biIRnUSpCaaOcQR
 b5P8deuEzWHnJ10j5QnUJ9eh7NwEYCoETy5599Yo=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from mir ([84.149.34.208]) by mail.gmx.com (mrgmx105
 [212.227.17.168]) with ESMTPSA (Nemesis) id 1MPXhK-1jgP940dFK-00MZ9d; Thu, 02
 Apr 2020 02:49:40 +0200
Date: Thu, 2 Apr 2020 02:49:38 +0200
From: Stefan Lippers-Hollmann <s.l-h@gmx.de>
To: Adrian Schmutzler <freifunk@adrianschmutzler.de>
Message-ID: <20200402024938.29efda68@mir>
In-Reply-To: <20200401224907.2858-1-freifunk@adrianschmutzler.de>
References: <20200401224907.2858-1-freifunk@adrianschmutzler.de>
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-Provags-ID: V03:K1:PUIA8cCBpHLe7hy6NJ+2b+WobT4twm5zCv+MSCT/3D/dQsxL7hO
 J+JXcCaVmFVQ8aUJbWROzlUmfE297wgxzv7Z58FKS/hAAzigqShQXHJhbycAM9P1dtk0/q3
 GNpTzLimdTdESvQ1l6jg63adN041XacJnibAsCur9yALlMEhCKOWuXoGuqKmFh3jUKRY3Ps
 UGZurzh/nKA156CPCgfmA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:P4RTee1ySKI=:eHsdmOFodv+WxgOA5o85oS
 YtCJ79xbDxUJDnvf3XnrOLC2rWz+WixngjnCK5YKaOZaIv6CEtK2myp+8oGod2vXdYw2ToKdn
 p0kWuz5Gc2lQzEXMm6RZs0hossiPN7kno/st5qJqg67ERoOgkflUJfgg4yQzXMzBrSTRheMrg
 vgdFB8gK7XxdD0A/MNNT1jcpEKBeLEf8GPSqfpTyxnAJCXU28ddXwLepqPD93Y9kXyncFgmg5
 Yy/hEPjNVykWs4M4MQGA8ftaO5Kb6AX7YnelR4s7n5IWBlU50+KRUw0khoKlyMVnIYyrxeC1x
 fuiGVTpLkkL0KsazyGdYzV476bx32qkEjP1HLKJWFzglJsA0j4lPIf2FjCqjFzzAXpjd5x7AV
 30gpMX2pjSWE0LPhVL9gzTe+B5L2b81UZsIglTNMDXKdt2WDzyh7Tzu+0lW0uuOrp4FaO0mxU
 KHJOLBhmJOJdSo7rlyNDBfWjZ0MhDPVgxsM6jrZoHsEava2N4bNzwptTnoC84D9NsSUf/XiDW
 TNp7/MtDH5MptcecJCbVwa6gN+tu0g5WqwmTeuNAVHf0bktixxYOIbj13x4GAWMLB88HIMzwe
 sjwESlUBh0eyEul28ECEU4bEz5FPj/uPoNM6mQI42Uo54yx6lkYGMYCL57Xo7i9DgBmCXTsSh
 QbL2kuEyXKFZgHHYFDO0Oe3wRPdnrqvVIe+LolSkdF9ipit1CvqIvonIq0dKmZele9kugSeQM
 8J6yjQLdujYOULPYbH7w0/GStTn89POgKrm/suqA1Z2WOi306b7z8WXJ3Z1toEseG1WQsJ9Iw
 nh8vKEgUhIFdL/dv1BOg/QFI1+GhjyZDorWFU9PtX7QfLOEgtKpifsFQ/NbkHlc/kreQNfuI5
 Zx38B3TQG/BmswuQM/Wx9s+EM8aobl7VmQ9RzVQCh2fiyXuzfXG50LdTroICwq3uEgeHwAsr3
 bvjd7T1hlI4Tslrsj5hgT5wIOD3Lgb/mUou+MnbOwiCZaz9qe26fHopc0fmKJVTTnokPE0Dzn
 nOHT3GGP4iRVrro2f+jVwZrEFIFg4m6jBxXf7y3V3oKLls7+E9pmnAVqPSy7MPethEScq6XIg
 uNcat5czM5xODD5K2DWqEY1PiMRn8r0DgS730Fy2OPTWLYC6G6R+EqBmwbuZulp7ozdXIcKbK
 PvhjEwzHwf/QO8KMNQw1SB6gKL0f8wbeiKPfeRdgziqGNl8SsBheKo9Y+6uN4AxOux95Nhq5+
 6gWb3o8q4sT5pSX5s
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200401_174945_246259_3C2FD2B8 
X-CRM114-Status: UNSURE (   8.44  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.22 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [s.l-h[at]gmx.de]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH 1/3] ipq806x: remove support for kernel
 4.14
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
Cc: openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi

On 2020-04-02, Adrian Schmutzler wrote:
> This target has been on kernel 4.19 for several months [1] and
> already uses kernel 5.4 as testing kernel. Therefore, it should
> not be necessary to keep support for kernel 4.14 as well.
>
> [1] 2a82e0e1ca0f ("ipq806x: switch to 4.19 kernel version")
>
> Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
[...]

Acked-by: Stefan Lippers-Hollmann <s.l-h@gmx.de> [ipq8065/nbg6817]


Thanks a lot for looking into this, given the rather good feedback
for kernel 5.4 testing on ipq806x (at least r7500v2, r7800 and nbg6817
are covered with good results so far), it might soon be time to switch
the default for ipq806x over to v5.4 as well.

Regards
	Stefan Lippers-Hollmann

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
