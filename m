Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ECAE113CE0C
	for <lists+openwrt-devel@lfdr.de>; Wed, 15 Jan 2020 21:23:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=1mIQvq1ubf6ON8883sx3Q28a48QvkmPg4zm5hfgeMFE=; b=sShsl1PymhOTsy68E0vxQyIgo
	KWusJ31xU/ucqUuzsf/qSBSdJJ/3KeV5ExULux2iDydnHZrnbb8YnrDb+TaMbz7+zeh83TEOQ0r4u
	NVA5R8Vy37ICBL+xTmxVJFGbVGXZweqgm5/xVCShsVzv0RImAqZ0IoFX6gnitvjjEC7BzgfxHSkz1
	k3+n1SE4R1RT4kJ1l7uT1sW/9rUmCP4d8ayvwzufOtc0/qr5Af4sF606DXBdXTet/6givVBhJ4yY0
	B3rDcc0BNBeMeqOJp+AmfDOY7hb1smVmvavJsROG2CfxksLNhoKVwJqzJD01k79B52la6ztPV0Kv6
	aplZ9rHjg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irpC0-0007sU-FI; Wed, 15 Jan 2020 20:23:08 +0000
Received: from nbd.name ([2a01:4f8:221:3d45::2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irpBs-0007lG-0r
 for openwrt-devel@lists.openwrt.org; Wed, 15 Jan 2020 20:23:01 +0000
Received: from [2a04:4540:1401:8c00:fabe:bb99:c5ae:67a0]
 by ds12 with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <john@phrozen.org>)
 id 1irpBp-0003Ug-U7; Wed, 15 Jan 2020 21:22:58 +0100
To: Florian Eckert <fe@dev.tdt.de>, Eckert.Florian@googlemail.com,
 Jason@zx2c4.com, ldir@darbyshire-bryant.me.uk, daniel.engberg.lists@pyret.net
References: <20191205103338.28355-1-fe@dev.tdt.de>
From: John Crispin <john@phrozen.org>
Message-ID: <5e92650e-dfb0-7458-f723-81587d0ba205@phrozen.org>
Date: Wed, 15 Jan 2020 21:22:56 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20191205103338.28355-1-fe@dev.tdt.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_122300_222409_6D0A040E 
X-CRM114-Status: GOOD (  18.61  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH v2] wireguard: skip peer config if
 public key of the peer is not defined
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On 05/12/2019 11:33, Florian Eckert wrote:
> If a config section of a peer does not have a public key defined, the
> whole interface does not start. The following log is shown
> 
> daemon.notice netifd: test (21071): Line unrecognized: `PublicKey='
> daemon.notice netifd: test (21071): Configuration parsing erro
> 
> The command 'wg show' does only show the interface name.
> 
> With this change we skip the peer for this interface and emit a log
> message. So the other peers get configured.
> 
> Signed-off-by: Florian Eckert <fe@dev.tdt.de>
Merged, Thanks !
> ---
> v2:
> * Update error message to be a sentence
> 
>   package/network/services/wireguard/files/wireguard.sh | 5 +++++
>   1 file changed, 5 insertions(+)
> 
> diff --git a/package/network/services/wireguard/files/wireguard.sh b/package/network/services/wireguard/files/wireguard.sh
> index 4c811c6ba9..ccac34e45f 100644
> --- a/package/network/services/wireguard/files/wireguard.sh
> +++ b/package/network/services/wireguard/files/wireguard.sh
> @@ -42,6 +42,11 @@ proto_wireguard_setup_peer() {
>   	config_get endpoint_port "${peer_config}" "endpoint_port"
>   	config_get persistent_keepalive "${peer_config}" "persistent_keepalive"
>   
> +	if [ -z "$public_key" ]; then
> +		echo "Skipping peer config $peer_config because public key is not defined."
> +		return 0
> +	fi
> +
>   	echo "[Peer]" >> "${wg_cfg}"
>   	echo "PublicKey=${public_key}" >> "${wg_cfg}"
>   	if [ "${preshared_key}" ]; then
> 


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
